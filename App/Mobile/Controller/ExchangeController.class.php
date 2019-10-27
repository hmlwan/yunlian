<?php
namespace Mobile\Controller;
use Common\Controller\CommonController;
class ExchangeController extends HomeController {
 	public function _initialize(){
 		parent::_initialize();
 	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	/*我要买*/
	public function buyview(){
	    dd($_SESSION);
        $data = $this->get_exchange_pub(1);
        $this->assign('list',$data['list']);
        $this->assign('limit',json_encode($data['limit']));
        $this->assign('unit_price',$data['unit_price']);
        $this->assign('num_json',$data['num_json']);

	    $this->display();
    }
    /*我要卖*/
    public function saleview(){
        $data = $this->get_exchange_pub(2);
        $this->assign('list',$data['list']);
        $this->assign('limit',json_encode($data['limit']));
        $this->assign('unit_price',$data['unit_price']);
        $this->assign('num_json',$data['num_json']);
        $this->display();
    }

    /*获得兑换发布数据*/
    public function get_exchange_pub($type){

        $where = array(
            'status' => 1,
            'type' => $type
        );
        /*失效时间*/
        $time = time();
        if($this->ex_config['invalid_time'] > 0){
            $time = $time - $this->ex_config['invalid_time'] * 3600;
            $where['add_time'] = array('elt' ,$time);
        }
        $list = M('exchange_pub')->where($where)->order("add_time desc")->select();
        $m_volum_db = M("member_exchange_volume");
        if($list){
            foreach ($list as &$value){
                $volum_num = $m_volum_db
                    ->where(array('member_id'=>$value['member_id'],'type'=>$type))
                    ->find();
                $total_num = 0;
                $single_order_num = 0;
                if($volum_num){
                    $total_num = $volum_num['total_num'];
                    $single_order_num = $volum_num['single_order_num'];
                }
                $value['total_num'] = $total_num;
                $value['single_order_num'] = $single_order_num;
                $value['nick_name'] = M('member_info')->where(array('member_id'=>$value['member_id']))->getField('nick_name');
                $value['currency_name'] = M('currency')->where(array('currency_id'=>$value['currency_id']))->getField('currency_name');
            }
        }
        /*交易时间*/
        $mtime = strtotime(date("H:i:s",time()));
        $limit = array(
            'is_open_deal' => $this->ex_config['is_open_deal']
        );
        if($mtime >= strtotime($this->ex_config['deal_start_time']) && $mtime <= strtotime($this->ex_config['deal_end_time'])){
            $limit['is_online'] = 1;
        }else{
            $limit['is_online'] = 0;
            $limit['deal_start_time'] = $this->ex_config['deal_start_time'];
            $limit['deal_end_time'] = $this->ex_config['deal_end_time'];
        }
        $data['list'] =  $list;
        $data['limit'] =  $limit;
        /*数量限额*/
        $num_json = $this->ex_config['num_json'];
        $num_json = json_decode($num_json,true);
        /*单价*/
        $unit_price = $this->ex_config['unit_price'];

        $data['unit_price'] =  number_format($unit_price,2,'.','');
        $data['num_json'] =  $num_json;
        return $data;
    }

    /*发布*/
    public function ex_pub(){
        $member_id = $_SESSION['USER_KEY_ID'];
        $USER_KEY = $_SESSION['USER_KEY'];
        $type = I('type');
        $num = I('num');
        $unit_price = I('unit_price');
        if($num < 0){
            $data['status'] = 0;
            $data['info'] = '请选择数量';
            $this->ajaxReturn($data);
        }
        /*查询是否冻结*/
        $is_freeze = M("exchange_freeze")->where(array('member_id'=>$member_id))->find();
        if($is_freeze){
            $data['status'] = 0;
            $data['info'] = '您已被冻结，暂时不能挂单';
            $this->ajaxReturn($data);
        }
        /*查询未成交委托单数量*/
         $tickets = M("exchange_pub")
             ->where(array('member_id'=>$member_id,'type'=>$type,'status'=>1))
             ->count();
         $limit_order_ticket_nums = $this->ex_config['limit_order_ticket_nums'];
        if($limit_order_ticket_nums >0 ){
            if($tickets > $limit_order_ticket_nums){
                $data['status'] = 0;
                $data['info'] = '最多可委托'.$limit_order_ticket_nums.'单';
                $this->ajaxReturn($data);
            }
        }

        $sum_price = $unit_price * $num;
        $data = array(
            'order_no' => '',
            'type' => $type,
            'member_id' => $member_id,
            'phone' => $USER_KEY,
            'currency_id' => $this->ex_config['currency_id'],
            'price' => $unit_price,
            'num' => $num,
            'sum_price' => $sum_price,
            'status' => 1,
            'add_time' => time()
        );
        if($type == 2){
            $mem_info = D("Member")->get_info_by_id($member_id);
            $data['zfb_no'] = $mem_info['zfb_no'];
            $data['zfb_username'] = $mem_info['true_name'];
        }
        $db = M('exchange_pub');
        $r = $db->add($data);
        if($r){
            $data['status'] = 1;
            $data['info'] = '委托成功';
            $this->ajaxReturn($data);
        }else{
            $data['status'] = 0;
            $data['info'] = '委托失败';
            $this->ajaxReturn($data);
        }

    }


    /*委托单*/
    public function orderticket(){
        $this->display();
    }
    /*订单*/
    public function orderview(){
        $this->display();
    }
    /*购买云链*/
    public function buy_detail(){
        $this->display();
    }
    /*付款订单*/
    public function pay_order(){
        $this->display();
    }
    /*交易完成*/
    public function pay_complete(){
        $this->display();
    }
    /*直接卖申诉*/
    public function sale_appeal(){
        $this->display();
    }
    /*直接买投诉*/
    public function buy_complain(){
        $this->display();
    }
}
