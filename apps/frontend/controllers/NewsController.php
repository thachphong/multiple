<?php

namespace Multiple\Frontend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\Posts;

class NewsController extends Controller
{

	public function indexAction($id)
	{
		
		$this->view->name= 'abc';
		//return $this->response->redirect('login');
        $url =  $this->request->getURI();
        $abc =1;
       // $post_data= Posts::findFirst
        $post_data = Posts::findFirst(array("id = :id:  AND status = 1 ",'bind' => array('id' => $id) ));
        $this->view->post = $post_data;
	}
	public function viewAction($id)
	{
		$url =  $this->request->getURI();
        $abc =1;
       // $post_data= Posts::findFirst
	}
}
