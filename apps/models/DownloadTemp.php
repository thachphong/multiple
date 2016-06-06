<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class DownloadTemp extends Model
{
    public $id_dl;
    public $status;
    public $link_dl;
    public $caption;
    public $des;
    public $img_link;
    public $addtime;
        
    public function initialize()
    {
        $this->setSource("download_temp");
    }
    public function get_All(){
        $usr_data = DownloadTemp::find(array('status'=>1));
        return $usr_data;
    }
    public function check_exists($url){    
    	//$res = DownloadTemp::find(array('link_dl'=>$url));
    	$pql = "SELECT count(*) cnt FROM Multiple\Models\DownloadTemp 
    			where link_dl = :link_dl:";
		$total = $this->modelsManager->executeQuery($pql,array( 'link_dl' => $url));
		if($total[0]->cnt == 0){
			return TRUE;
		}
		/*return $total[0]->cnt;
        if( count($res) == 0){
			return TRUE;
		}*/
		return FALSE;
    }   
}
