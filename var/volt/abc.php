<?= $this->tag->getDoctype() ?>
<html lang="en" id="site" dir="ltr">
	<head>
        <meta charset="utf-8">
        <?= $this->tag->getTitle() ?>      
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Your invoices">
        <meta name="author" content="Phalcon Team">
        <link rel='stylesheet' id='Roboto-css'  href='http://fonts.googleapis.com/css?family=Roboto' type='text/css' media='all' />
        <?= $this->tag->stylesheetLink('template1/css/style.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/swipemenu.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/flexslider.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/bootstrap.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/bootstrap-responsive.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/jquery.simplyscroll.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/jPages.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/jquery.rating.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/ie.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/style.css') ?>
        <?= $this->tag->stylesheetLink('template1/css/style.css') ?>

        <?= $this->tag->javascriptInclude('template1/js/jquery-1.10.2.min.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/html5.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/bootstrap.min.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.flexslider.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.flexslider.init.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.bxslider.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.bxslider.init.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.rating.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.idTabs.min.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.simplyscroll.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/fluidvids.min.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jPages.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.sidr.min.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/jquery.touchSwipe.min.js') ?>
        <?= $this->tag->javascriptInclude('template1/js/custom.js') ?>

    </head>
	<body>		
        <div id="page">
        	<header id="header" class="container">
		<div id="mast-head">
			<div id="logo">
			<a href="index.html" title="Magazine" rel="home"><img src="public/template1/images/logo.png" alt="Magazine" /></a>
			</div>
		</div>

				
        <nav class="navbar navbar-inverse clearfix nobot">
						
			<a id="responsive-menu-button" href="#swipe-menu">
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>		
			</a>	

            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse" id="swipe-menu-responsive">

			<ul class="nav">
				
				<li>
				<span id="close-menu">
					<a href="#" class="close-this-menu">Close</a>
						<script type="text/javascript">
							jQuery('a.sidr-class-close-this-menu').click(function(){
								jQuery('div.sidr').css({
									'right': '-476px'
								});
								jQuery('body').css({
								'right': '0'
								});							
							});
						</script>
					
				</span>
				</li>
								
				<li><a href="index.html"><img src="public/template1/images/home.png" alt="Magazine"></a></li>
				<?= $this->elements->getMenu() ?>
			</ul>
            </div><!--/.nav-collapse -->
			
        </nav><!-- /.navbar -->
			
	</header><!-- #masthead -->
        <?= $this->getContent() ?>   
        </div>
	</body>
</html>
