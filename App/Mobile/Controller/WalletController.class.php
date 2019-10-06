<?php
/**
 * Created by PhpStorm.
 * User: v_huizzeng
 * Date: 2019/10/6
 * Time: 22:00
 */

namespace Mobile\Controller;


class WalletController extends HomeController
{

    public function _initialize(){
        parent::_initialize();
    }
    //空操作
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    public function wallet(){

        $db = D('currency_user');
        $member_id = session('USER_KEY_ID');
        $where = array(
            'member_id' => $member_id,
            'currency_id' => $this->config['set_user_currency'],
        );
        $currency_user = $db->where($where)->find();
        $this->assign('currency_user',$currency_user);
        $this->display();
    }


}