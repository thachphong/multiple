<?php

error_reporting(E_ALL);

use Phalcon\Loader;
use Phalcon\Mvc\Router;
use Phalcon\DI\FactoryDefault;
use Phalcon\Mvc\Application as BaseApplication;
use Phalcon\Mvc\View\Engine\Volt as VoltEngine;
use Phalcon\Mvc\Url;
use Phalcon\Cache\Backend\File as BackFile;
use Phalcon\Cache\Frontend\Data as FrontData;

define('APP_PATH', realpath('..') . '/');
class Application extends BaseApplication
{

	/**
	 * Register the services here to make them general or register in the ModuleDefinition to make them module-specific
	 */
	protected function registerServices()
	{

		$di = new FactoryDefault();

		$loader = new Loader();

		/**
		 * We're a registering a set of directories taken from the configuration file
		 */
		$loader->registerDirs(
			array(
				__DIR__ . '/../apps/library/'
			)
		)->register();

		//Registering a router
		$di->set('router', function(){

			$router = new Router();

			$router->setDefaultModule("frontend");

			$router->add('/:controller/:action', array(
				'module' => 'frontend',
				'controller' => 1,
				'action' => 2,
			));

			$router->add("/login", array(
				'module' => 'backend',
				'controller' => 'login',
				'action' => 'index',
			));

			$router->add("/admin/products/:action", array(
				'module' => 'backend',
				'controller' => 'products',
				'action' => 1,
			));

			$router->add("/products/:action", array(
				'module' => 'frontend',
				'controller' => 'products',
				'action' => 1,
			));

			return $router;

		});		
		$di->set('viewCache', function(){
	        //Cache data for one day by default
	        $frontCache = new FrontendCache(["lifetime" => 86400]);

	        //File backend settings
	        $cache = new BackendCache($frontCache, ["cacheDir" => __DIR__."/../var/cache/",]);

	        return $cache;
    	});
    	$di->set('dataCache', function(){
			$frontCache = new FrontData(array("lifetime" => 172800  ));		
			$cache = new BackFile(   $frontCache,   array("cacheDir" => "/../var/data/" ));
		});
		
		$di->set('url', function () {
		    $url = new Url();
		    $url->setBaseUri('/multiple/');
		    return $url;
		});
		$di->set('elements', function () {
			return new Elements();
		});
		/*$di->set('view', function () use ($config) {

        	$view = new View();

        	$view->setViewsDir(APP_PATH . $config->application->viewsDir);

        	$view->registerEngines(array(
            		".volt" => 'volt'
            	));

            	return $view;
        });*/

        /**
         * Setting up volt
         */
        /*$di->set('volt', function ($view, $di) {

        	$volt = new VoltEngine($view, $di);

        	$volt->setOptions(array(
        		"compiledPath" => APP_PATH . "cache/volt/"
        	));

        	$compiler = $volt->getCompiler();
        	$compiler->addFunction('is_a', 'is_a');

        	return $volt;
        }, true);*/
		
		$this->setDI($di);
	}

	public function main()
	{

		$this->registerServices();

		//Register the installed modules
		$this->registerModules(array(
			'frontend' => array(
				'className' => 'Multiple\Frontend\Module',
				'path' => '../apps/frontend/Module.php'
			),
			'backend' => array(
				'className' => 'Multiple\Backend\Module',
				'path' => '../apps/backend/Module.php'
			)
		));

		echo $this->handle()->getContent();
	}

}

$application = new Application();
$application->main();
