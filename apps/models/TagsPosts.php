<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class TagsPosts extends Model
{
    public $tag_id;
    public $post_id;
        
    public function initialize()
    {
        $this->setSource("tags_posts");
    }
    public function get_by_post($post_id){
        $phql   = "select t.* from tags_posts p
					INNER JOIN tags t on p.tag_id = t.tag_id
					where p.post_id= :post_id: ";
        $query = $this->modelsManager->createQuery($phql);
		$tags  = $query->execute(array(        'post_id' => $post_id    ));
		return $tags;
    }   
}
