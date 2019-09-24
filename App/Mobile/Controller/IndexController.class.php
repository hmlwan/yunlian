<?php
namespace Mobile\Controller;
use Common\Controller\CommonController;
class IndexController extends CommonController {
 	public function _initialize(){

 		parent::_initialize();
 	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
        $model = M('game_list');
        $member_id = $_SESSION['USER_KEY_ID'];

        $list = $model->select();
        $this->assign('list',$list);
        $this->assign('member_id',$member_id);
        $this->display();
     }


}
