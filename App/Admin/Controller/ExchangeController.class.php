<?php
/**
 * Created by PhpStorm.
 * User: v_huizzeng
 * Date: 2019/10/4
 * Time: 15:21
 */

namespace Admin\Controller;

class ExchangeController extends AdminController
{
    /*兑换配置*/
    public function config(){
        $model = M ('exhange_config' );
        if(IS_POST){
            $id = I('post.id');

            if($data = $model->create()){
                $num_val = I('num_val');
                if($num_val){
                    asort($num_val);
                    $num_val = array_filter(array_unique($num_val));
                    $data['num_json'] = json_encode($num_val);
                }
                $data['op_time'] = time();
                if($id){
                    $res = $model->where(array('id'=>$id))->save($data);
                }else{
                    $res = $model->add($data);
                }
                if(!$res){
                    $this->error('提交失败');
                }
                $this->success('操作成功',U('config'));
            }else{
                $this->success('提交失败');
            }
        }else{

            $info = $model->where("1=1")->find();
            $info["num_json"] = json_decode($info["num_json"],true);
            $this->assign ('info', $info );
            /*币种*/
            $cur_list = M('currency')->where(array('is_lock'=>0))->field("currency_id,currency_name")->select();
            $this->assign ('cur_list', $cur_list );
            $this->display ();
        }

    }

    /*管理发布*/
    public function pub(){
        $model = M ('currency' );
        $string = I('string');

        $where = array();
        if($string){
            $where["_string"] = "currency_name like %$string% OR currency_en like %$string%" ;
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
            ->order ("sort asc" )
            ->limit ( $Page->firstRow . ',' . $Page->listRows )
            ->select ();

        $this->assign ('list', $info ); // 赋值数据集
        $this->assign ('page', $show ); // 赋值分页输出
        $this->display ();
    }
    /*发布下架*/
    public function down(){
        
    }
    /*订单交易*/
    public function order(){
        $model = M ('currency' );
        $string = I('string');

        $where = array();
        if($string){
            $where["_string"] = "currency_name like %$string% OR currency_en like %$string%" ;
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
            ->order ("sort asc" )
            ->limit ( $Page->firstRow . ',' . $Page->listRows )
            ->select ();

        $this->assign ('list', $info ); // 赋值数据集
        $this->assign ('page', $show ); // 赋值分页输出
        $this->display ();
    }
    /*冻结账号*/
    public function freeze_account(){
        $model = M ('exchange_freeze' );
        $string = I('string');

        $where = array();
        if($string){
            $where["_string"] = "currency_name like %$string% OR currency_en like %$string%" ;
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
            ->order ("freeze_time asc" )
            ->limit ( $Page->firstRow . ',' . $Page->listRows )
            ->select ();

        $this->assign ('list', $info ); // 赋值数据集
        $this->assign ('page', $show ); // 赋值分页输出
        $this->display ();
    }

    public function edit(){
        $db = M("freeze_time");
        if(IS_POST){
            $id = I('post.currency_id','','');

            if($save_data = $db->create()){
                if($_FILES["Filedata"]["tmp_name"]){
                    $currency_logo  = $this->upload($_FILES["Filedata"]);
                }else{
                    $currency_logo = I('currency_logo');
                }
                $save_data['currency_logo'] = $currency_logo;
                $save_data['create_time'] = time();
                if($id){ /*编辑*/
                    $res = $db->where(array('currency_id'=>$id))->save($save_data);
                }else{ /*新增*/
                    $res = $db->add($save_data);
                }
                if($res){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }

        }else{
            $currency_id = I('get.currency_id');
            $res = $db->where(array('currency_id'=>$currency_id))->find();
            $this->assign('info',$res);
            $this->display();
        }
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

}