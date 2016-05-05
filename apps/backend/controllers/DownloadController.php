<?php

namespace Multiple\Backend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\DownloadStructure;
use Multiple\Library\AutoDownload;
use Multiple\Models\Menu;
use Multiple\Models\Posts;
//require __DIR__.'/../../library/AutoDownload.php';

class DownloadController extends Controller
{

	public function indexAction()
	{
		//$this->view->disable();
		$menu = new Menu();
		$list_menu = $menu->get_All();
		$this->view->listmenu = $list_menu;
	}
    public function exeAction(){
        $this->view->disable();
        $result['status']='NOT';
        $result['msg']='';
        if ($this->request->isPost()) {

            $url = $this->request->getPost('link_dl');
            $menu_id = $this->request->getPost('menu_id');
          
            $dl = new AutoDownload();
            $structure= new DownloadStructure();
                        
            preg_match('/^(http:\/\/).+?\//',$url,$match);
            $data_st = $structure->get_by_ref_link($match[0]);
            $dl->set_URL($url);
            //$title = "div.artshow h1";
            //$content = "div.artbody";
            //$img = "div.artbody img";
            $title ='';
            $file_name ='';
            $content ='';
            foreach($data_st as $row){
                if($row->key=='title'){
                    $title = $dl->GetTitle($row->xpath);
                }else if($row->key =='image'){                
                    $file_name = $dl->get_img($row->xpath);
                }else if($row->key=='content'){
                    foreach($result as $item){
                        if($item->key=='del'){
                            $dl->remove_element($item->xpath,$item->element_remove);
                        }
                    }
                    $content = $dl->get_content($row->xpath);
                }
            }

            //$title .= $dl->GetTitle($title) ;
            //$html .= $dl->get_innerHTML($content) ;
            //$html .= $dl->get_img($img) ;
            //$dl->remove_element('ins;script');
            //$html .= $dl->get_content($content);
           
    		$resource = $match[0];
    		
    	    
    	    $file_ext=	pathinfo($file_name,PATHINFO_EXTENSION);
    	    
    		$post= new Posts();
    	    $post->caption = $title;
            $post->filename = $file_name;       
    	    $post->size = 0;
    	    $post->type = 'blog';
    	    $post->resource = $resource;
    	    $post->adduser= 1;
    	    $post->content = $content;
            $post->menu_id = $menu_id;
    	    $post->save(); 
    	    
            $result['status']='OK';
            $result['msg']='Download thành công !';
        }
        $this->response->setJsonContent($result);
        return $this->response;
    }
}
