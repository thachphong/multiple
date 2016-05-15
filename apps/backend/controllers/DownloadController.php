<?php

namespace Multiple\Backend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\DownloadStructure;
use Multiple\Library\AutoDownload;
use Multiple\Models\Menu;
use Multiple\Models\Posts;
use Multiple\Models\Tags;
use Multiple\Models\TagsPosts;
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
            $tags = array();
            foreach($data_st as $row){
                if($row->key=='title'){
                	//$this->logger->info('title');
                    $title = $dl->GetTitle($row->xpath);
                }else if($row->key =='image'){   
                	//$this->logger->info('image');             
                    $file_name = $dl->get_img($row->xpath,$match[0]);
                }else if($row->key=='del'){
                	//$this->logger->info('del'); 
                    $dl->remove_element($row->xpath,$row->element_remove); 
                }else if($row->key=='replace'){ 
                	//$this->logger->info('replace');    
                    $dl->replaceString($row->xpath,$row->from_string,$row->to_string);
                }else if($row->key=='des'){ 
                	//$this->logger->info('des');    
                	$des = $dl->get_text($row->xpath);
                }else if($row->key=='tag'){
                	//$this->logger->info('tag');     
                	$tags = $dl->get_tag($row->xpath,$row->from_string,'');
                }else if($row->key=='content'){
                	//$this->logger->info('content'); 
                    /*foreach($data_st as $item){
                        if($item->key=='del'){
                            $dl->remove_element($item->xpath,$item->element_remove);
                        }
                    }*/
                    $content = $dl->get_content($row->xpath,$match[0]);
                    //$this->logger->info('content2'); 
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
    	    $post->des = $des ;
    	    $post->content = $content;
            $post->menu_id = $menu_id;
            $post->add_date = date();
            $post->add_time = time();
    	    $post->save(); 
    	    
    	    $tags_model = new Tags();
    	    if(count($tags) >0){
				foreach($tags as $tag){
					$tags_model = new Tags();
					$tag_data = Tags::findFirst(array("tag_no = :tag_no: ",'bind' => array('tag_no' => $tag['tag_no']) ));
					if($tag_data == FALSE)
					{
						$tag_data = new Tags();
						$tag_data->tag_no = $tag['tag_no'];
						$tag_data->tag_name = $tag['tag_name'];
						$tag_data->save();
					}
					$tagpost = new TagsPosts();
					$tagpost->tag_id = $tag_data->tag_id;
					$tagpost->post_id = $post->id ;
					$tagpost->save();
				}
			}
            $result['status']='OK';
            $result['msg']='Download thành công !';
        }
        $this->response->setJsonContent($result);
        return $this->response;
    }
}
