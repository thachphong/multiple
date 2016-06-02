<?php

namespace Multiple\Frontend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\Posts;
use Multiple\Models\Tags;

class NewsController extends Controller
{

	public function indexAction($id)
	{
		
		//$this->view->name= 'abc';
		//return $this->response->redirect('login');
        $url =  $this->request->getURI();
        $abc =1;
        $db = new Posts();
       // $post_data= Posts::findFirst
        $post_data = Posts::findFirst(array("id = :id:  AND status = 1 ",'bind' => array('id' => $id) ));
        $post_data->total_view += 1; 
        $post_data->save();
        $tagpost = new Tags();
        $tag_data = $tagpost->get_by_post($id);
        $relation_old = $db->get_realtion_old($post_data->id,$post_data->type,$post_data->menu_id); 
        $relation_new = $db->get_realtion_new($post_data->menu_id,$post_data->id); 
        $this->view->post = $post_data;
        $this->view->relation_old = $relation_old;
        $this->view->relation_new = $relation_new;
        $this->view->tags = $tag_data;
        $this->view->menu_id = $post_data->menu_id;
	}
	public function viewAction($id)
	{
		$url =  $this->request->getURI();
        $abc =1;
       // $post_data= Posts::findFirst
	}
}
