<?php

namespace Multiple\Frontend\Controllers;

use Phalcon\Mvc\Controller;

class ProductsController extends Controller
{

	public function indexAction()
	{
		
		$this->view->name= 'abc';
		//return $this->response->redirect('login');
		
		
	}
	public function testAction()
	{
		
	}
}
