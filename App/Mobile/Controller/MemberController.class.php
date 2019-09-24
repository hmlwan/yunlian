<?php
namespace Mobile\Controller;

use Common\Controller\CommonController;
class MemberController extends CommonController {
    private $member_id;
 	public function _initialize(){
 		parent::_initialize();
        $this->member_id = session('USER_KEY_ID');
        if(!session('USER_KEY_ID')){
            $this->redirect('Login/index');
            return;
        }

 	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	/*会员中心*/
    public function index(){

        $member_id = session('USER_KEY_ID');
        $model = D('Member');
        $info = $model->get_info_by_id($member_id);

        $this->assign('info',$info);
	    $this->display();
    }


    /*修改密码*/
    public function modifypwd(){
        $info = M("member")->field('member_id,username,phone')->find($this->member_id);
        $this->assign('phone',$info['phone']);
        $this->display();
    }
    public function modifypwd_op(){
        $pwd = I('pwd','','');
        $repwd = I('repwd','','');
        $yzm = I('yzm','','');
        if($pwd !=  $repwd){
            $data['status'] = 0;
            $data['info'] = '2次输入的密码不一样';
            $this->ajaxReturn($data);
        }

        if($yzm !=  $_SESSION['code']){
            $data['status'] = 0;
            $data['info'] = '验证码不正确';
            $this->ajaxReturn($data);
        }
        $r = M('member')
            ->where(array('member_id'=>$this->member_id))
            ->save(array('pwd'=>md5($pwd)));
        if($r){
            $data['status'] = 1;
            $data['info'] = '修改成功';
            $this->ajaxReturn($data);
        }else{
            $data['status'] = 0;
            $data['info'] = '服务器繁忙,请稍后重试';
            $this->ajaxReturn($data);
        }
    }
    /**/
    public function addbank(){
        $model = M('member_info');
        if(IS_POST){
            $bankname = I('bankname');
            $be_username = I('be_username');
            $account_addr = I('account_addr');
            $bank_no = I('bank_no','','');
            $tk_pwd = I('tk_pwd','','');

            $data = array(
                'member_id' => $this->member_id,
                'be_username' => $be_username,
                'bank_name' => $bankname,
                'account_addr' => $account_addr,
                'bank_no' => $bank_no,
                'tk_pwd' => $tk_pwd,
                'create_time' => time(),
            );
            $is_exist = $model->where(array( 'member_id' => $this->member_id))->find();
            if($is_exist){
                $data['status'] = 0;
                $data['info'] = '已添加银行卡';
                $this->ajaxReturn($data);
            }
            $res = $model->add($data);

            if($res){
                $data['status'] = 1;
                $data['info'] = '添加成功';
                $this->ajaxReturn($data);
            }else{
                $data['status'] = 0;
                $data['info'] = '服务器繁忙,请稍后重试';
                $this->ajaxReturn($data);
            }
        }else{
            $this->display();
        }
    }
    /*提现*/
    public function withdraw_money(){

        $member_id = session('USER_KEY_ID');
        $mem_info_data = M('member_info')->where(array('member_id'=>$member_id))->find();

        if(IS_POST){

            $password = I('password');
            $qk_num = I('qk_num');
            $be_username = I('be_username');
            $bank_no = I('bank_no');
//            if($password !=$mem_info_data['tk_pwd'] ){
//                $data['status'] = 0;
//                $data['info'] = '提款密码错误';
//                $this->ajaxReturn($data);
//            }
            if($be_username !=$mem_info_data['be_username'] ){
                $data['status'] = 0;
                $data['info'] = '真实姓名错误';
                $this->ajaxReturn($data);
            }
            $data = array(
                'member_id' => $member_id,
                'num' => $qk_num,
                'status' => 0,
                'bank_no' => $bank_no,
                'be_username' => $be_username,
                'create_time' => time(),
            );
            $r = M('withdraw_record')->add($data);
            if($r){
                $data['status'] = 1;
                $data['data'] = $r;
                $data['info'] = '提交成功';
                $this->ajaxReturn($data);
            }else{
                $data['status'] = 0;
                $data['info'] = '提交失败';
                $this->ajaxReturn($data);
            }
        }else{
            if(!$mem_info_data ||!$mem_info_data['tk_pwd'] || !$mem_info_data['bank_no'] ){
                $this->redirect('Member/addbank');
                return;
            }
            $model = D('Member');
            $info = $model->get_info_by_id($member_id);
            $this->assign('info',$info);
            $this->display();
        }

    }
    /*充值*/
    public function pay_select_way(){

        $member_id = session('USER_KEY_ID');
        $mem_model = D('Member');
        $model = M('receipt_type');
        if(IS_POST){
            $charge_num = I('post.charge_num');
            $charge_username = I('post.charge_username');
            $receipt_id = I('post.receipt_id');
            if($charge_num <50){
                $data['status'] = 0;
                $data['info'] = '最小充值金额不能少于50.00';
                $this->ajaxReturn($data);
            }
            $re_info = $model->find($receipt_id);
            $data = array(
                'member_id' => $member_id,
                'receipt_id' => $receipt_id,
                'num' => $charge_num,
                'username' => $charge_username,
                'type' =>$re_info['type'],
                'bank_name' =>$re_info['bank_name'],
                'receipt_name' =>$re_info['receipt_name'],
                'receipt_account' =>$re_info['receipt_account'],
                'account_addr' =>$re_info['account_addr'],
                'url' =>$re_info['url'],
                'create_time'=> time(),
                'record_type' => 1,
                'status' => 0
            );
            $r = M("record")->add($data);
            if($r){
                $data['status'] = 1;
                $data['data'] = $r;
                $data['info'] = '提交成功';
                $this->ajaxReturn($data);
            }else{
                $data['status'] = 0;
                $data['info'] = '提交失败';
                $this->ajaxReturn($data);
            }
        }else{

            $info = $mem_model->get_info_by_id($member_id);
            $this->assign('info',$info);
            $pay_way = $model->select();
            $this->assign('pay_way',$pay_way);
            $this->display();
        }

    }
    /*充值成功*/
    public function pay_success(){
        $record_id = I('get.id');
        $info = M("record")->find($record_id);

        $this->assign("info",$info);
        $this->display();
    }


    /*二维码*/
    public function qrcodeimg(){
        $id = I('id');
        $url = M('record')->where(array('id'=>$id))->getField('url');
        Vendor('phpqrcode.phpqrcode');
        $QRcode = new \QRcode ();
        $errorCorrectionLevel = 'M';
        $matrixPointSize = 4;
        $QRcode::png($url,false,$errorCorrectionLevel,$matrixPointSize);
    }
    /*二维码*/
    public function qrcodeimg1(){
        $id = I('id');
        $url = M('receipt_type')->where(array('id'=>$id))->getField('url');
        Vendor('phpqrcode.phpqrcode');
        $QRcode = new \QRcode ();
        $errorCorrectionLevel = 'M';
        $matrixPointSize = 4;
        $QRcode::png($url,false,$errorCorrectionLevel,$matrixPointSize);
    }










}