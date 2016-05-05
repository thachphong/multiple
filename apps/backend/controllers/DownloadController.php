<?php

namespace Multiple\Backend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\Menu;

class DownloadController extends Controller
{

	public function indexAction()
	{
		//$this->view->disable();
		$menu = new Menu();
		$list_menu = $menu->get_All();
		$this->view->listmenu = $list_menu;
	}
}
