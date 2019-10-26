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
	    $this->display();
    }
    /*我要卖*/
    public function saleview(){
        $this->display();
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
