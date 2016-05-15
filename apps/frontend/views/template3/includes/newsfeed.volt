<section class="slider">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-sm-9">
                <div class="slider-posts-news">
                    <div class="title-posts-news">New update</div>
                    <div class="append_recent">
                        <div id="owl-slider" class="owl-carousel">
                        	{{ elements.getNewsfeed() }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-3">
                <form method="get" id="searchform" action="http://bloglamme.com">
    <input class="text-search" type="text" value="Tìm kiếm mẹo vặt" name="s" id="s" onblur="if (this.value == '')  {this.value = 'Tìm kiếm mẹo vặt';}" onfocus="if (this.value == 'Tìm kiếm mẹo vặt') {this.value = '';}"/>
    <input name="search" type="submit" id='buttom-search' class='buttom-search' value=""/>
</form>            </div>
        </div>
    </div>
</section>