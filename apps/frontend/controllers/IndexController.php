<?php

namespace Multiple\Frontend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\Posts;

class IndexController extends Controller
{

	public function indexAction()
	{
		$db = new Posts();
		$newpost = $db->get_new(11);
		//$data8 = $db->get_by_menu(8,6);// Khoa học công nghệ
		$data6 = $db->get_by_menu(6,6);// tinh yeu gioi tinh
		$data7 = $db->get_by_menu(7,6);// tâm sự
		$data2 = $db->get_by_menu(2,8);// xa hoi
		$data3 = $db->get_by_menu(5,3);// suc khoe
		$data4 = $db->get_by_menu(4,6);// an ninh - hinh su
		$data5 = $db->get_by_menu(8,6);// Khoa học công nghệ
		$data1 = $db->get_by_menu(9,10);// the gioi
		$right1 = $db->get_by_menu(10,6);// mang xa hoi
		/*$newtab_left =array();
		$newtab_right =array();
		foreach($newpost as $key ->$item){
			if($key < 4){
				$newtab_left[]=$item;
			}else{
				$newtab_right[]=$item;
			}
		}*/
        /*$this->view->newtab_left  = $newtab_left;
        $this->view->newtab_right = $newtab_right;*/
        $this->view->menu_id =1 ;
        $this->view->newtab  = $newpost;
        $this->view->data1  = $data1;
        $this->view->data2  = $data2;
        $this->view->data3  = $data3;
        $this->view->data4  = $data4;
        $this->view->data5  = $data5;
        $this->view->data6  = $data6;
        $this->view->data7  = $data7;
        $this->view->right1  = $right1;
       // echo 'xxx';
	}
}
