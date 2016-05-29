<?php

namespace Multiple\Backend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Backend\Models\Products as Products;

class ApprovalController extends Controller
{

	public function indexAction()
	{
		$this->view->product = Products::findFirst();
	}
}
