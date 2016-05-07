<?php

use Phalcon\Mvc\User\Component;

/**
 * Elements
 *
 * Helps to build UI elements for the application
 */
class Elements extends Component
{

    private $_adminMenu = array(
        'navbar-left' => array(
            'index' => array(
                'caption' => 'Home',
                'action' => 'index'
            ),
            'invoices' => array(
                'caption' => 'Invoices',
                'action' => 'index'
            ),
            'about' => array(
                'caption' => 'About',
                'action' => 'index'
            ),
            'contact' => array(
                'caption' => 'Contact',
                'action' => 'index'
            ),
             'news' => array(
                'caption' => 'news',
                'action' => 'index'
            ),
            'download' => array(
                'caption' => 'Download',
                'action' => 'index'
            ),
        ),
        'navbar-right' => array(
            'useradm' => array(
                'caption' => 'Log In/Sign Up',
                'action' => 'login'
            ),
        )
    );

    private $_tabs = array(
        'Invoices' => array(
            'controller' => 'invoices',
            'action' => 'index',
            'any' => false
        ),
        'Companies' => array(
            'controller' => 'companies',
            'action' => 'index',
            'any' => true
        ),
        'Products' => array(
            'controller' => 'products',
            'action' => 'index',
            'any' => true
        ),
        'Product Types' => array(
            'controller' => 'producttypes',
            'action' => 'index',
            'any' => true
        ),
        'Your Profile' => array(
            'controller' => 'invoices',
            'action' => 'profile',
            'any' => false
        )
    );

    /**
     * Builds header menu with left and right items
     *
     * @return string
     */
    public function getMenu()
    {
    	$cacheKey = 'menu.cache';
		$menu_data  = $this->dataCache->get($cacheKey);
		if ($menu_data === null) {
			$menu_data ='';
		    $list_menu = $this->db->fetchAll("SELECT t.*,'0' as chk ,(select count(*) from menu m where m.parent = t.id) have_child FROM menu t WHERE status = :status",            Phalcon\Db::FETCH_ASSOC,            array('status' => '1'));
	        /*foreach($list_menu as $key=>$row){
	            if($row['have_child']>0 && $list_menu[$key]['chk']=='0'){
	                $menu_data .= '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']);
	                $menu_data .= '<ul class="sub-menu">';
	                foreach($list_menu as $key1=>$sub){
	                    if($sub['parent']==$row['id'] && $list_menu[$key1]['chk']=='0' ){
	                        if($sub['have_child']>0){
	                            $menu_data .= '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']);
	                            $menu_data .= '<ul class="sub-menu">';
	                            foreach($list_menu as $key2=>$sub2){
	                                if($sub2['parent']==$sub['id'] && $list_menu[$key2]['chk']=='0' ){
	                                    $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub2['id'], $sub2['title']).'</li>';
	                                    $list_menu[$key2]['chk']='1';
	                                }
	                            }
	                            $menu_data .= '</ul>';
	                            $list_menu[$key1]['chk']='1';
	                        }else{
	                            if($list_menu[$key1]['chk']=='0'){
	                                $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']).'</li>';
	                                $list_menu[$key1]['chk']='1';
	                            }
	                        }
	                    }
	                }
	                $menu_data .= '</ul>';
	                $list_menu[$key]['chk']='1';
	            }else{
	                if($list_menu[$key]['chk']=='0'){
	                    $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']).'</li>';
	                    $list_menu[$key]['chk']='1';
	                }                            
	            }
	        }*/
            foreach($list_menu as $key=>$row){
	            if($row['have_child']>0 && $list_menu[$key]['chk']=='0'){
	                $menu_data .= '<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children">'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']);
	                $menu_data .= '<ul class="sub-menu">';
	                foreach($list_menu as $key1=>$sub){
	                    if($sub['parent']==$row['id'] && $list_menu[$key1]['chk']=='0' ){
	                        if($sub['have_child']>0){
	                            $menu_data .= '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']);
	                            $menu_data .= '<ul class="sub-menu">';
	                            foreach($list_menu as $key2=>$sub2){
	                                if($sub2['parent']==$sub['id'] && $list_menu[$key2]['chk']=='0' ){
	                                    $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub2['id'], $sub2['title']).'</li>';
	                                    $list_menu[$key2]['chk']='1';
	                                }
	                            }
	                            $menu_data .= '</ul>';
	                            $list_menu[$key1]['chk']='1';
	                        }else{
	                            if($list_menu[$key1]['chk']=='0'){
	                                $menu_data .= '<li class="menu-item menu-item-type-taxonomy menu-item-object-category">'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']).'</li>';
	                                $list_menu[$key1]['chk']='1';
	                            }
	                        }
	                    }
	                }
	                $menu_data .= '</ul>';
	                $list_menu[$key]['chk']='1';
	            }else{
	                if($list_menu[$key]['chk']=='0'){
                        if( $row['title']=='Home'){
                            $menu_data .= '<li class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-7">'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']).'</li>';
	                        $list_menu[$key]['chk']='1';
                        }else{
                            $menu_data .= '<li class="menu-item menu-item-type-taxonomy menu-item-object-category">'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']).'</li>';
	                        $list_menu[$key]['chk']='1';
                        }	                    
	                }                            
	            }
	        }
		    // Store it in the cache
		    $this->dataCache->save($cacheKey, $menu_data);
		    
		}
		echo $menu_data;


        
        /*
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->_headerMenu['navbar-right']['session'] = array(
                'caption' => 'Log Out',
                'action' => 'end'
            );
        } else {
            unset($this->_headerMenu['navbar-left']['invoices']);
        }*/     
        /*$controllerName = $this->view->getControllerName();
        foreach ($this->_headerMenu as $position => $menu) {
            echo '<div class="nav-collapse">';
            echo '<ul class="nav navbar-nav ', $position, '">';
            foreach ($menu as $controller => $option) {
                if ($controllerName == $controller) {
                    echo '<li class="active">';
                } else {
                    echo '<li>';
                }
                echo $this->tag->linkTo($controller . '/' . $option['action'], $option['caption']);
                echo '</li>';
            }
            echo '</ul>';
            echo '</div>';
        }*/

    }
	public function getAdminMenu(){
		
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->_adminMenu['navbar-right']['useradm'] = array(
                'caption' => 'Log Out',
                'action' => 'logout' 
            );
        } else {
            unset($this->_adminMenu['navbar-left']['invoices']);
        }
        $controllerName = $this->view->getControllerName();
        echo '<div class="collapse navbar-collapse">';
        echo '<div class="navbar-header">    <a class="navbar-brand" href="#">Admin</a>    </div>';
        foreach ($this->_adminMenu as $position => $menu) {            
            echo '<ul class="nav navbar-nav ', $position, '">';
            foreach ($menu as $controller => $option) {
                if($option['action']=='logout'){
                    echo '<li class="dropdown">';
                    echo '<a class="dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)">Xin Chào '.$auth['name'].'<span class="caret"></span>
</a>';
                    echo '<ul class="dropdown-menu">';
                    echo '<li>'.$this->tag->linkTo( 'useradm/edit' , 'Thông tin cá nhân').'</li>';    
                    echo '<li>'.$this->tag->linkTo('useradm/logout', 'Thoát').'</li>';                       
                    echo '</ul></li>';
                }else{
                    if ($controllerName == $controller) {
                        echo '<li class="active">';
                    } else {
                        echo '<li>';
                    }
                    echo $this->tag->linkTo($controller . '/' . $option['action'], $option['caption']);
                    echo '</li>';
                }
            }
            echo '</ul>';
        }
        echo '</div>';
        /*echo '<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Bootstrap theme</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>';*/
	}
    /**
     * Returns menu tabs
     */
    public function getTabs()
    {
        $controllerName = $this->view->getControllerName();
        $actionName = $this->view->getActionName();
        echo '<ul class="nav nav-tabs">';
        foreach ($this->_tabs as $caption => $option) {
            if ($option['controller'] == $controllerName && ($option['action'] == $actionName || $option['any'])) {
                echo '<li class="active">';
            } else {
                echo '<li>';
            }
            echo $this->tag->linkTo($option['controller'] . '/' . $option['action'], $caption), '</li>';
        }
        echo '</ul>';
    }
}
