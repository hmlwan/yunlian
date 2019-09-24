<?php
/*
 * 后台理财管理
 */
namespace Admin\Controller;
use Admin\Controller\AdminController;
class RecordController extends AdminController {
    // 空操作
    public function _empty() {
        header ( "HTTP/1.0 404 Not Found" );
        $this->display ( 'Public:404' );
    }
    /*充值记录*/
    public function recharge() {
        $model = M ('record' );
        $string = I('string');

        $where = array();
        if($string){
            $where["_string"] = "username like %$string% OR phone like %$string%" ;
        }

        // 查询满足要求的总记录数
        $count = $model->where ( $where )->count ();
        // 实例化分页类 传入总记录数和每页显示的记录数
        $Page = new \Think\Page ( $count, 20 );
        //将分页（点击下一页）需要的条件保存住，带在分页中
        // 分页显示输出
        $show = $Page->show ();
        //需要的数据
        $field = "*";
        $info = $model->field ( $field )
            ->where ( $where )
            ->order ("id desc" )
            ->limit ( $Page->firstRow . ',' . $Page->listRows )
            ->select ();
        foreach ($info as &$value){
            $value['m_username'] = M('member')->where(array('member_id'=>$value['member_id']))->getField('username');
        }

        $this->assign ('info', $info ); // 赋值数据集
        $this->assign ('page', $show ); // 赋值分页输出
        $this->display ();
    }
    /*提现记录*/
    public function tixian() {
        $model = M ('withdraw_record' );
        $string = I('string');

        $where = array();
        if($string){
            $where["_string"] = "username like %$string% OR phone like %$string%" ;
        }

        // 查询满足要求的总记录数
        $count = $model->where ( $where )->count ();
        // 实例化分页类 传入总记录数和每页显示的记录数
        $Page = new \Think\Page ( $count, 20 );
        //将分页（点击下一页）需要的条件保存住，带在分页中
        // 分页显示输出
        $show = $Page->show ();
        //需要的数据
        $field = "*";
        $info = $model->field ( $field )
            ->where ( $where )
            ->order ("id desc" )
            ->limit ( $Page->firstRow . ',' . $Page->listRows )
            ->select ();
        foreach ($info as &$value){
            $value['m_username'] = M('member')->where(array('member_id'=>$value['member_id']))->getField('username');
        }

        $this->assign ('info', $info ); // 赋值数据集
        $this->assign ('page', $show ); // 赋值分页输出
        $this->display ();
    }

    public function del(){
        if(empty($_POST['id'])){
            $info['status'] = -1;
            $info['info'] ='传入参数有误';
            $this->ajaxReturn($info);
        }

        $id = I('post.id','','intval');
        $model = I('post.model','','');
        $r = M($model)->delete($id);

        if(!$r){
            $info['status'] = 0;
            $info['info'] ='删除失败';
            $this->ajaxReturn($info);
        }
        $info['status'] = 1;
        $info['info'] ='删除成功';
        $this->ajaxReturn($info);
    }
    public function audit(){

        if(empty($_POST['id'])){
            $info['status'] = -1;
            $info['info'] ='传入参数有误';
            $this->ajaxReturn($info);
        }
        $id = I('post.id','','intval');
        $status = I('post.status');
        $type = I('post.type');

        if($type == 1){
            $model = M('record');
        }else{
            $model = M('withdraw_record');
        }
        $info = $model->where(array('id'=>$id))->find();
        $rmb = M("member")->where(array('member_id'=>$info['member_id']))->getField('rmb');
        if($status == 1){
            if($type == 1){
                M("member")->where(array('member_id'=>$info['member_id']))->setInc('rmb',$info['num']);
            }else{
//                if($rmb < $info['num']){
//                    $info['status'] = -1;
//                    $info['info'] ='提现失败，余额不足';
//                    $this->ajaxReturn($info);
//                }
//                M("member")->where(array('member_id'=>$info['member_id']))->setDec('rmb',$info['num']);
            }

        }
        $res =  $model->where(array('id'=>$id))->save(array('status'=>$status));
        if(!$res){
            $info['status'] = 0;
            $info['info'] ='操作失败';
            $this->ajaxReturn($info);
        }
        $info['status'] = 1;
        $info['info'] ='操作成功';
        $this->ajaxReturn($info);

    }


}
?>