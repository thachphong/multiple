<section class="main">
	<div class="container">
        <div class="row">
            <div class="col-lg-9 col-sm-9 col-xs-12 money-posts">
                <div class="news-posts">
                    <div class="row">
                        <div class="col-lg-7 col-sm-6 col-xs-6">
                            <ul class="left">
                            {% for key,item in newtab if key <4 %}
                            	<li>
                                <a class="bold" href="{{url.get('news/'~item.id)}}" title="{{item.caption}}">
                                {% if key == '0' %}
                                    <img style ="width:482px; height:305px" src="{{url.get('images/'~item.filename)}}" class="attachment-thumb_482x340 wp-post-image" alt="{{item.caption}}"/> {{item.caption}}</a>
                                    <p>{{item.des}}</p>
                                {% else %}
                                	<img width="170" height="122" src="{{url.get('images/'~item.filename)}}" class="attachment-thumb_170x122 wp-post-image" alt="{{item.caption}}"/>{{item.caption}}"</a> 		    
                                		
                                {% endif %}
                                </li>
                            {% endfor %}
                                        
                            </ul>
                        </div>
                        <div class="col-lg-5 col-sm-6 col-xs-6">
                            <ul class="right">
                            {% for key,item in newtab if key >=4 %}
	                        	<li>
	                        		<a href="{{url.get('news/'~item.id)}}" title="{{item.caption}}">
	                                    <img style="width:75px; height:60px" src="{{url.get('images/'~item.filename)}}" class="attachment-thumb_75x60 wp-post-image" alt="{{item.caption}}"/></a>
	                                <div class="info-post">
                                        <a class="bold" href="{{url.get('news/'~item.id)}}" title="{{item.caption}}">{{item.caption}}</a>
                                        <span class="date timepost" data-time="04-05-2016">1 week  trước</span>
                                	</div>
	                                
	                            </li>
	                        {% endfor %}
                        	</ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-3 hidden-xs ads-top-right">
                <div id="text-17" class="widget_text">			
                	<div class="textwidget">
                		<a href="http://bloglamme.com/tro-thanh-cong-tac-vien-cua-blog-lam-me/" target="_blank">
                		<img style="display:block;" <img style="display:block;" src="http://bloglamme.com/wp-content/uploads/2016/02/tuyen-ctv.png" border="0px" width="348px" height="150px;">
                			
                	</div>
				</div>
				<div id="text-13" class="widget_text">			
					<div class="textwidget"><script type="text/javascript" src="//admicro1.vcmedia.vn/ads_codes/ads_box_34251.ads"></script></div>
				</div>          
			</div>
        </div>
        <div class="row">
                    <div class="col-lg-12">
                        <div class="popular-posts">
                            <div class="subcat">
                                <div class="title_active">
                                    <i class="fa fa-child"></i> <a href="" title="Được quan tâm nhiều">Được quan tâm nhiều</a>                                </div>
                            </div>
                            <div id="owl-popular" class="owl-carousel">
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/mot-so-luu-y-phong-benh-mua-he-cho-tre/" title="Một số lưu ý phòng bệnh mùa hè cho trẻ">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/song-khoe-216x180.jpg" alt="Một số lưu ý phòng bệnh mùa hè cho trẻ" title="Một số lưu ý phòng bệnh mùa hè cho trẻ">
                                            Một số lưu ý phòng bệnh mùa hè cho trẻ                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/nhung-tac-dung-phu-cua-dau-xanh-khi-an-can-phai-tranh/" title="Những tác dụng phụ của đậu xanh khi ăn cần phải tránh">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/dau-xanh-216x180.jpg" alt="Những tác dụng phụ của đậu xanh khi ăn cần phải tránh" title="Những tác dụng phụ của đậu xanh khi ăn cần phải tránh">
                                            Những tác dụng phụ của đậu xanh khi ăn cần phải tránh                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/15-thuc-pham-tot-cho-me-bau-bi-3-thang-dau/" title="15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/blog-lam-me-ca-216x180.jpg" alt="15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu" title="15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu">
                                            15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/tho-sau-cho-than-tam-an-lac/" title="Thở sâu cho thân tâm an lạc">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/tho-sau-cho-than-tam-an-lac-216x180.jpg" alt="Thở sâu cho thân tâm an lạc" title="Thở sâu cho thân tâm an lạc">
                                            Thở sâu cho thân tâm an lạc                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/cach-pha-nuoc-chanh-sa-khien-nguoi-nhe-hon-sau-1-tuan/" title="Cách pha nước chanh sả khiến người nhẹ hơn sau 1 tuần">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/nuoc-chanh-sa-216x180.jpg" alt="Cách pha nước chanh sả khiến người nhẹ hơn sau 1 tuần" title="Cách pha nước chanh sả khiến người nhẹ hơn sau 1 tuần">
                                            Cách pha nước chanh sả khiến người nhẹ hơn sau 1 tuần                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/nho-dang-tri-ma-biet-them-1-cach-nau-sua-dau-nanh-bao-ngon/" title="Nhờ đãng trí tôi biết thêm cách nấu sữa đậu nành bao ngon">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/cach-lam-sua-dau-nanh-1-216x180.jpg" alt="Nhờ đãng trí tôi biết thêm cách nấu sữa đậu nành bao ngon" title="Nhờ đãng trí tôi biết thêm cách nấu sữa đậu nành bao ngon">
                                            Nhờ đãng trí tôi biết thêm cách nấu sữa đậu nành bao ngon                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/cay-thuoc-chua-benh-ve-gan-ke-ca-ung-thu-thoi-ky-cuoi/" title="Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/05/blog-lam-me-216x180.jpg" alt="Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối" title="Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối">
                                            Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/nghi-le-dai-ngay-can-phai-nho-dieu-nay/" title="Nghĩ lễ dài ngày cần phải nhớ điều này!">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/ngay-le-dai-216x180.jpg" alt="Nghĩ lễ dài ngày cần phải nhớ điều này!" title="Nghĩ lễ dài ngày cần phải nhớ điều này!">
                                            Nghĩ lễ dài ngày cần phải nhớ điều này!                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/dung-voi-bo-nhung-loi-giay-ve-sinh-nhung-dieu-sau-day-se-khien-ban-bat-ngo/" title="Đừng vội bỏ những lõi giấy vệ sinh, những điều sau đây sẽ khiến bạn bất ngờ">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/lam-chim-216x180.jpg" alt="Đừng vội bỏ những lõi giấy vệ sinh, những điều sau đây sẽ khiến bạn bất ngờ" title="Đừng vội bỏ những lõi giấy vệ sinh, những điều sau đây sẽ khiến bạn bất ngờ">
                                            Đừng vội bỏ những lõi giấy vệ sinh, những điều sau đây sẽ khiến bạn bất ngờ                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/xem-cach-lam-xoai-lac-ngon-hap-dan/" title="Xem cách làm xoài lắc ngon hấp dẫn">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/9-216x180.jpg" alt="Xem cách làm xoài lắc ngon hấp dẫn" title="Xem cách làm xoài lắc ngon hấp dẫn">
                                            Xem cách làm xoài lắc ngon hấp dẫn                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/viet-nam-dung-thu-4-dong-nam-a-ve-so-nguoi-chet-vi-ung-thu/" title="Việt Nam đứng thứ 4 Đông Nam Á về số người chết vì ung thư">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/anh1_1-216x180.jpg" alt="Việt Nam đứng thứ 4 Đông Nam Á về số người chết vì ung thư" title="Việt Nam đứng thứ 4 Đông Nam Á về số người chết vì ung thư">
                                            Việt Nam đứng thứ 4 Đông Nam Á về số người chết vì ung thư                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/nuoc-che-phong-va-chua-benh-tim-mach/" title="Nước chè phòng và chữa bệnh tim mạch">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/1a1-216x180.jpg" alt="Nước chè phòng và chữa bệnh tim mạch" title="Nước chè phòng và chữa bệnh tim mạch">
                                            Nước chè phòng và chữa bệnh tim mạch                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/su-phat-trien-va-ren-luyen-thinh-giac-cua-tre/" title="Sự phát triển và rèn luyện thính giác của trẻ">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/be-tap-nghe-216x180.jpg" alt="Sự phát triển và rèn luyện thính giác của trẻ" title="Sự phát triển và rèn luyện thính giác của trẻ">
                                            Sự phát triển và rèn luyện thính giác của trẻ                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/khoai-so-nhung-loi-ich-mang-lai-ma-ban-chua-tung-biet/" title="Khoai sọ: Những lợi ích mang lại mà bạn chưa từng biết !">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/khoaiso-216x180.jpg" alt="Khoai sọ: Những lợi ích mang lại mà bạn chưa từng biết !" title="Khoai sọ: Những lợi ích mang lại mà bạn chưa từng biết !">
                                            Khoai sọ: Những lợi ích mang lại mà bạn chưa từng biết !                                        </a>
                                    </h3>
                                                                    </div>
                                                                <div class="item">
                                    <h3>
                                        <a class="bold" href="http://bloglamme.com/8-ly-do-kho-ngo-khien-ban-khong-con-muon-lam-chuyen-ay/" title="8 lý do khó ngờ khiến bạn không còn muốn làm &#8220;chuyện ấy&#8221;">
                                                                                        <img class="owl-lazy" data-src="http://bloglamme.com/wp-content/uploads/2016/04/ham-muon-tinh-duc-216x180.jpg" alt="8 lý do khó ngờ khiến bạn không còn muốn làm &#8220;chuyện ấy&#8221;" title="8 lý do khó ngờ khiến bạn không còn muốn làm &#8220;chuyện ấy&#8221;">
                                            8 lý do khó ngờ khiến bạn không còn muốn làm &#8220;chuyện ấy&#8221;                                        </a>
                                    </h3>
                                                                    </div>
                                                            </div>
                        </div>
                    </div>
                </div>
        <div class="row">
            <div class="main-content">
                                                <div class="col-lg-9 col-sm-9 main-left">
                            <div class="row">
                                <div class="col-lg-8 col-sm-8 posts-left">
                                    		<div id="eweb_post_by_cate_6-3" class="item-cate item-cate-4">            <div class="subcat">
                <div class="title_active">
                    <i class="fa fa-fa fa-book"></i>  <h2><a href="http://bloglamme.com/giao-duc-tre/" title="Giáo dục trẻ">Giáo dục trẻ</a></h2>                </div>
            </div>
            <div class="list-posts list-posts-4">
                <ul>
                	                    <li>
                        <a href="http://bloglamme.com/16-sai-lam-lam-hai-suc-khoe-ma-ban-khong-he-biet/" title="16 sai lầm làm hại sức khỏe mà bạn không hề biết">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/bo-an-sang-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="bo an sang"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/16-sai-lam-lam-hai-suc-khoe-ma-ban-khong-he-biet/" title="16 sai lầm làm hại sức khỏe mà bạn không hề biết">
                        	16 sai lầm làm hại sức khỏe mà bạn không hề biết                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/day-cho-tre-cach-biet-tiet-kiem-tien-the-nao/" title="Dạy cho trẻ cách biết tiết kiệm tiền thế nào?">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/tiet-kiem-tien-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="tiet kiem tien"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/day-cho-tre-cach-biet-tiet-kiem-tien-the-nao/" title="Dạy cho trẻ cách biết tiết kiệm tiền thế nào?">
                        	Dạy cho trẻ cách biết tiết kiệm tiền thế nào?                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/9-cach-ung-xu-ban-can-phai-day-con-ngay/" title="9 cách ứng xử bạn cần phải dạy con ngay">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/day-con-chao-hoi-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="day con chao hoi"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/9-cach-ung-xu-ban-can-phai-day-con-ngay/" title="9 cách ứng xử bạn cần phải dạy con ngay">
                        	9 cách ứng xử bạn cần phải dạy con ngay                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/nhung-bi-quyet-day-con-cua-nguoi-nhat/" title="Những bí quyết dạy con của người Nhật">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/nguoi-nhat-day-con-ne-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="nguoi nhat day con ne"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/nhung-bi-quyet-day-con-cua-nguoi-nhat/" title="Những bí quyết dạy con của người Nhật">
                        	Những bí quyết dạy con của người Nhật                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/ngo-ngang-voi-11-tinh-huong-con-hu-tai-bo-me/" title="Ngỡ ngàng với 11 tình huống ‘con hư tại bố mẹ’">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/day-con-7-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="day con 7"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/ngo-ngang-voi-11-tinh-huong-con-hu-tai-bo-me/" title="Ngỡ ngàng với 11 tình huống ‘con hư tại bố mẹ’">
                        	Ngỡ ngàng với 11 tình huống ‘con hư tại bố mẹ’                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/30-cau-hoi-giup-me-biet-con-di-hoc-da-xay-ra-chuyen-gi/" title="30 câu hỏi giúp mẹ biết con đi học đã xảy ra chuyện gì">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/blog-lam-cha-me-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="blog lam cha me"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/30-cau-hoi-giup-me-biet-con-di-hoc-da-xay-ra-chuyen-gi/" title="30 câu hỏi giúp mẹ biết con đi học đã xảy ra chuyện gì">
                        	30 câu hỏi giúp mẹ biết con đi học đã xảy ra chuyện gì                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/thoi-quen-khien-con-ban-kem-thong-minh/" title="Thói quen khiến con bạn kém thông minh">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/blog-lam-me-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="blog lam me"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/thoi-quen-khien-con-ban-kem-thong-minh/" title="Thói quen khiến con bạn kém thông minh">
                        	Thói quen khiến con bạn kém thông minh                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/6-dieu-can-lam-de-thong-minh/" title="6 điều mẹ cần làm để bé thông minh">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/02/day-con-thong-minh-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="day con thong minh"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/6-dieu-can-lam-de-thong-minh/" title="6 điều mẹ cần làm để bé thông minh">
                        	6 điều mẹ cần làm để bé thông minh                        </a>
                    </li>
		    		                </ul>
            </div>
        </div>		<div id="eweb_post_by_cate_7-2" class="item-cate item-cate-5">            <div class="subcat">
                <div class="title_active">
                    <i class="fa fa-"></i>  <h2><a href="http://bloglamme.com/suc-khoe-gia-dinh/" title="Sức khỏe gia đình">Sức khỏe gia đình</a></h2>                </div>
            </div>
            <div class="list-posts list-posts-5">
                <ul>
                	                    <li>
                        <a href="http://bloglamme.com/cay-thuoc-chua-benh-ve-gan-ke-ca-ung-thu-thoi-ky-cuoi/" title="Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/05/blog-lam-me-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="blog lam me"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/cay-thuoc-chua-benh-ve-gan-ke-ca-ung-thu-thoi-ky-cuoi/" title="Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối">
                        	Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/nuoc-che-phong-va-chua-benh-tim-mach/" title="Nước chè phòng và chữa bệnh tim mạch">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/04/1a1-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="1a1"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/nuoc-che-phong-va-chua-benh-tim-mach/" title="Nước chè phòng và chữa bệnh tim mạch">
                        	Nước chè phòng và chữa bệnh tim mạch                        </a>
                    </li>
		    		                    <li>
                        <a href="http://bloglamme.com/canh-bao-viet-nam-dung-thu-2-ve-ti-le-mac-benh-ung-thu/" title="[Cảnh báo]: Việt Nam đứng thứ 2 về tỉ lệ mắc bệnh ung thư">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/04/benh-ung-thu-04-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="benh-ung-thu-04"/>                        </a>
                        <a class="bold" href="http://bloglamme.com/canh-bao-viet-nam-dung-thu-2-ve-ti-le-mac-benh-ung-thu/" title="[Cảnh báo]: Việt Nam đứng thứ 2 về tỉ lệ mắc bệnh ung thư">
                        	[Cảnh báo]: Việt Nam đứng thứ 2 về tỉ lệ mắc bệnh ung thư                        </a>
                    </li>
		    		                </ul>
            </div>
        </div>		<div id="eweb_post_by_cate_4-9" class="item-cate item73">            <div class="subcat">
                <div class="title_active">
                    <i class="fa fa-fa fa-child"></i>  <h2><a href="http://bloglamme.com/cham-soc-be/" title="Chăm sóc bé">Chăm sóc bé</a></h2>                </div>
                <ul>
                	                </ul>
            </div>
            <div class="list-posts list-posts-2">
                <ul>
                	                    <li>
                        <a class="bold" href="http://bloglamme.com/mot-so-luu-y-phong-benh-mua-he-cho-tre/" title="Một số lưu ý phòng bệnh mùa hè cho trẻ">
                        	<img width="543" height="305" src="http://bloglamme.com/wp-content/uploads/2016/05/song-khoe.jpg" class="attachment-thumb_259x186 wp-post-image" alt="song khoe"/>                        	Một số lưu ý phòng bệnh mùa hè cho trẻ                        </a>
                        <p>Viêm não Nhật Bản B: Bệnh viêm não Nhật Bản có tỉ lệ tử vong khá cao hoặc để lại di chứng thần kinh nặng nề. Mộ[...]</p>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/15-thuc-pham-tot-cho-me-bau-bi-3-thang-dau/" title="15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/05/blog-lam-me-ca-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="blog lam me ca"/>                        	15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu                        </a>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/quan-niem-sai-lam-ve-cach-danh-rang/" title="Quan niệm sai lầm về cách đánh răng">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/04/danh-rang-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="danh rang"/>                        	Quan niệm sai lầm về cách đánh răng                        </a>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/mach-me-chon-cac-thuc-pham-chong-soi-cho-be/" title="Mách mẹ chọn các thực phẩm chống sởi cho bé">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/04/phong-soi-cho-be-bang-thuc-pham-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="phong-soi-cho-be-bang-thuc-pham"/>                        	Mách mẹ chọn các thực phẩm chống sởi cho bé                        </a>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/su-phat-trien-va-ren-luyen-thinh-giac-cua-tre/" title="Sự phát triển và rèn luyện thính giác của trẻ">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/04/be-tap-nghe-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="be tap nghe"/>                        	Sự phát triển và rèn luyện thính giác của trẻ                        </a>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/tai-sao-be-mat-ngu/" title="Tại sao bé mất ngủ ?">
                        	<img width="75" height="60" src="http://bloglamme.com/wp-content/uploads/2016/04/be-ma-ngu-75x60.jpg" class="attachment-thumb_75x60 wp-post-image" alt="be-ma-ngu"/>                        	Tại sao bé mất ngủ ?                        </a>
                    </li>
                    		    		                </ul>
            </div>
        </div>		<div id="eweb_post_by_cate_5-3" class="item-cate ">            <div class="subcat">
                <div class="title_active">
                    <i class="fa fa-fa fa-trophy"></i>  <h2><a href="http://bloglamme.com/goc-tu-van/" title="Góc tư vấn">Góc tư vấn</a></h2>                </div>
                <ul>
                	<li><a href="http://bloglamme.com/goc-tu-van/tu-van-cho-con/" title="Tư vấn cho con">Tư vấn cho con</a></li><li><a href="http://bloglamme.com/goc-tu-van/tu-van-cho-me/" title="Tư vấn cho mẹ">Tư vấn cho mẹ</a></li>                </ul>
            </div>
            <div class="list-posts list-posts-3">
                <ul>
                	                    <li>
                        <a class="bold" href="http://bloglamme.com/mot-so-luu-y-phong-benh-mua-he-cho-tre/" title="Một số lưu ý phòng bệnh mùa hè cho trẻ">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/05/song-khoe-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="song khoe"/>                        	Một số lưu ý phòng bệnh mùa hè cho...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/su-phat-trien-va-ren-luyen-thinh-giac-cua-tre/" title="Sự phát triển và rèn luyện thính giác của trẻ">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/04/be-tap-nghe-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="be tap nghe"/>                        	Sự phát triển và rèn luyện thính giác...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/tai-sao-be-mat-ngu/" title="Tại sao bé mất ngủ ?">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/04/be-ma-ngu-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="be-ma-ngu"/>                        	Tại sao bé mất ngủ ?                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/su-phat-trien-tam-van-dong-cua-tre/" title="Sự phát triển tâm vận động của trẻ">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/03/su-phat-trien-cua-tre-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="Composite of baby(12 months)in  disposable nappy taking first step"/>                        	Sự phát triển tâm vận động của trẻ                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-loai-thuc-pham-tot-cho-doi-mat-cua-be/" title="Những loại thực phẩm tốt cho đôi mắt của bé">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/03/lam-sao-khi-tre-kem-hap-thu-dinh-duong-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="lam-sao-khi-tre-kem-hap-thu-dinh-duong"/>                        	Những loại thực phẩm tốt cho đôi...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-y-nghia-khong-ngo-ve-thu-nghiem-tien-san/" title="Những ý nghĩa không ngờ về thử nghiệm tiền sản">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/03/thu-nghiem-tien-san-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="thu nghiem tien san"/>                        	Những ý nghĩa không ngờ về thử...                        </a>
                    </li>
		    		                </ul>
            </div>
        </div>		
        <div id="eweb_post_by_cate_4-6" class="item-cate item73">            
        	<div class="subcat">
                <div class="title_active">
                    <i class="fa fa-"></i>  <h2><a href="http://bloglamme.com/vao-bep/" title="Tình yêu - giới tính">Tình yêu - giới tính</a></h2>                		</div>
                <!--<ul> sub menu
                	<li><a href="/vao-bep/dinh-duong-cho-con/" title="Dinh dưỡng cho con">Dinh dưỡng cho con</a></li>
                	<li><a href="/vao-bep/mon-ngon/" title="Món ngon">Món ngon</a></li>                
                </ul>-->
            </div>
            <div class="list-posts list-posts-2">
                <ul>
                {% for key,item in data6 %}
                	<li>
                		<a class="bold" href="{{url.get('news/'~item.id)}}" title="{{item.caption}}">
                		{% if key=='0' %}
                        	<img width="650" height="480" src="{{url.get('images/'~item.filename)}}" class="attachment-thumb_259x186 wp-post-image" alt="{{item.caption}}"/>{{item.caption}}</a>
                        <p>{{item.des}}</p>
                        {% else %}
                        	<img width="75" height="60" src="{{url.get('images/'~item.filename)}}" class="attachment-thumb_75x60 wp-post-image" alt="{{item.caption}}"/>{{item.caption}}</a>
                        {% endif%}
                	</li>
                {% endfor%}                	
                </ul>
            </div>
        </div>		
        <div id="eweb_post_by_cate_5-2" class="item-cate ">            
        	<div class="subcat">
                <div class="title_active">
                    <i class="fa fa-"></i>  <h2><a href="http://bloglamme.com/gia-dinh/" title="Tâm sự">Tâm sự</a></h2>           			</div>
                <!--<ul>
                	<li><a href="/gia-dinh/goc-vo-chong/" title="Góc vợ chồng">Góc vợ chồng</a></li>
                	<li><a href="gia-dinh/tam-su/" title="Tâm sự">Tâm sự</a></li><li><a href="http://bloglamme.com/gia-dinh/viet-cho-con/" title="Viết cho con">Viết cho con</a></li>                
                </ul>-->
            </div>
            <div class="list-posts list-posts-3">
                <ul>
                {% for key,item in data7 %}
                	<li>
                		<a class="bold" href="{{url.get('news/'~item.id)}}" title="{{item.caption}}">  
                        <img style="width:170px; height:122px" src="{{url.get('images/'~item.filename)}}" class="attachment-thumb_259x186 wp-post-image" alt="{{item.caption}}"/>{{item.caption}}</a>
                	</li>
                {% endfor%}
                	                    <!--<li>
                        <a class="bold" href="http://bloglamme.com/nhung-tac-dung-phu-cua-dau-xanh-khi-an-can-phai-tranh/" title="Những tác dụng phụ của đậu xanh khi ăn cần phải tránh">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/05/dau-xanh-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="dau xanh"/>                        	Những tác dụng phụ của đậu xanh khi...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/buc-thu-me-viet-cho-con-gai-tuoi-moi-lon/" title="Bức thư mẹ viết cho con gái tuổi mới lớn">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/02/buc-thu-1-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="buc thu 1"/>                        	Bức thư mẹ viết cho con gái tuổi mới...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/20-bai-thuoc-chua-benh-tang-huyet-ap-bang-thuoc-nam/" title="20 bài thuốc chữa bệnh tăng huyết áp bằng thuốc Nam">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/02/thuoc-nam-nu-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="thuoc nam nu"/>                        	20 bài thuốc chữa bệnh tăng huyết áp...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/sinh-mo-nen-kieng-nhung-gi/" title="Mẹ sinh mổ nên ăn kiêng những gì ?">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/02/sinh-mo-bloglamme-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="sinh-mo-bloglamme"/>                        	Mẹ sinh mổ nên ăn kiêng những gì ?                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-bai-thuoc-tri-ho-cho-tre-em-me-nao-cung-can/" title="Những bài thuốc trị ho cho trẻ em, mẹ nào cũng cần">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/02/bai-tri-ho-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="bai tri ho"/>                        	Những bài thuốc trị ho cho trẻ em, mẹ...                        </a>
                    </li>
		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/la-vo-moi-kho-la-bo-ai-chang-lam-duoc/" title="Là vợ mới khó, là bồ ai chẳng làm được">
                        	<img width="170" height="122" src="http://bloglamme.com/wp-content/uploads/2016/02/pic_La-vo-moi-kho-la-bo-ai-chang-lam-duoc-170x122.jpg" class="attachment-thumb_170x122 wp-post-image" alt="pic_La-vo-moi-kho-la-bo-ai-chang-lam-duoc"/>                        	Là vợ mới khó, là bồ ai chẳng làm...                        </a>
                    </li>-->
		    	</ul>
            </div>
        </div>                                
    </div>
                                <div class="col-lg-4 col-sm-4 posts-right">
                                    		<div class="tabsview">
	        <div id="tabs">
	            <ul>
	                <li><a href="#tabs-1"><i class="fa fa-rocket"></i> Đọc Nhiều</a></li>
	                <li><a href="#tabs-2"><i class="fa fa-eye"></i> Mớt Nhất</a></li>
	            </ul>
	            <div id="tabs-1">
	                <div class="list-posts">
		                <ul>
		                	{{ elements.getTopPost() }}	
		                </ul>			                   
		            </div>
	            </div>
	            <div id="tabs-2">
	                <div class="list-posts">
		                <ul>
		                	{{ elements.getNewPost() }}	
		                </ul>
		            </div>
	            </div>
	        </div>
	        <script>
	        jQuery(function() {
	             jQuery( "#tabs" ).tabs();
	        });
	        </script>
	    </div>
        		<div id="eweb_post_by_cate_3-3" class="item-cate-2 item-cate-3 item-cate">            <div class="subcat-2"><span>	            <a href="http://bloglamme.com/song-khoe/" title="">
	            	<i class="fa fa-"></i> Thời sự	            </a>
            </span></div>            <div class="list-posts">
                <ul>
                	                    {{ elements.getMidlePost() }}
                	                </ul>
            </div>

        </div><div id="text-15" class="widget_text item-cate">			<div class="textwidget"><script type="text/javascript" src="//admicro1.vcmedia.vn/ads_codes/ads_box_34237.ads"></script></div>
		</div>                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-3 main-right">
                            <div id="text-19" class="widget_text item-cate">			<div class="textwidget"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- thaycode -->
<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-2923659153088133" data-ad-slot="6027411801" data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div>
		</div>		<div id="eweb_post_by_cate_2-9" class="item-cate-2 item-cate">            <div class="subcat-2"><span><a href="http://bloglamme.com/mang-thai/" title=""><i class="fa fa-fa fa-graduation-cap"></i> Mẹ mang thai</a></span></div>            <div class="list-posts">
                <ul>
                	                    <li>
                        <a class="bold" href="http://bloglamme.com/15-thuc-pham-tot-cho-me-bau-bi-3-thang-dau/" title="15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu">
                            15 thực phẩm tốt cho mẹ bầu bí 3 tháng đầu                            <img width="650" height="480" src="http://bloglamme.com/wp-content/uploads/2016/05/blog-lam-me-ca.jpg" class="attachment-thumb_301x216 wp-post-image" alt="blog lam me ca"/>                        </a>
                        <p>Dinh dưỡng trong 3 tháng đầu mang thai là cực kỳ quan trọng, Blog làm mẹ xin giới thiệu đến các bạn nhóm thực [...]</p>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-y-nghia-khong-ngo-ve-thu-nghiem-tien-san/" title="Những ý nghĩa không ngờ về thử nghiệm tiền sản">Những ý nghĩa không ngờ về thử nghiệm tiền sản</a>
                        <!-- <span>(03-03)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/cac-trieu-chung-trong-thoi-ky-mang-thai-va-cach-tu-chua-tri/" title="Các triệu chứng trong thời kỳ mang thai và cách tự chữa trị">Các triệu chứng trong thời kỳ mang thai và cách tự chữa trị</a>
                        <!-- <span>(02-29)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-dieu-can-biet-khi-me-mang-thai/" title="Những điều cần biết khi mẹ mang thai">Những điều cần biết khi mẹ mang thai</a>
                        <!-- <span>(02-29)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/sinh-mo-nen-kieng-nhung-gi/" title="Mẹ sinh mổ nên ăn kiêng những gì ?">Mẹ sinh mổ nên ăn kiêng những gì ?</a>
                        <!-- <span>(02-24)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-dieu-can-biet-ve-sinh-mo/" title="Những điều cần biết về sinh mổ">Những điều cần biết về sinh mổ(Đáp án)</a>
                        <!-- <span>(02-24)</span> -->
                    </li>
                    		    		                </ul>
            </div>
        </div>		<div id="eweb_post_by_cate_2-2" class="item-cate-2 item-cate">            <div class="subcat-2"><span><a href="http://bloglamme.com/me-sanh-dieu/" title=""><i class="fa fa-"></i> Mẹ sành điệu</a></span></div>            <div class="list-posts">
                <ul>
                	                    <li>
                        <a class="bold" href="http://bloglamme.com/6-cach-de-so-huu-mot-doi-chan-quyen-ru/" title="6 cách để sở hữu một đôi chân quyến rũ">
                            6 cách để sở hữu một đôi chân quyến rũ                            <img width="600" height="450" src="http://bloglamme.com/wp-content/uploads/2016/04/tamchan.jpg" class="attachment-thumb_301x216 wp-post-image" alt="tamchan"/>                        </a>
                        <p>Đôi chân đẹp và láng mịn như nhung có phải là điều bạn mong muốn sở hữu? Mọi người chắc hẳn ai cũng th�[...]</p>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/mat-na-my-pham-giup-da-ban-cang-min/" title="Mặt nạ mỹ phẩm &#8211; giúp da bạn căng mịn">Mặt nạ mỹ phẩm &#8211; giúp da bạn căng mịn</a>
                        <!-- <span>(03-22)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/tri-mun-dau-den-voi-cac-loai-hoa-qua/" title="Trị mụn đầu đen với các loại hoa quả">Trị mụn đầu đen với các loại hoa quả</a>
                        <!-- <span>(02-24)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/tac-dung-cua-dau-dua-cho-ba-bau/" title="Tác dụng của dầu dừa cho bà bầu ?">Tác dụng của dầu dừa cho bà bầu ?</a>
                        <!-- <span>(02-24)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/meo-hay-khong-chi-danh-cho-phai-dep/" title="12 Mẹo làm đẹp hay không chỉ dành cho các nàng">12 Mẹo làm đẹp hay không chỉ dành cho các nàng</a>
                        <!-- <span>(02-23)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/meo-duong-toc-bang-chuoi-chi-phi-thap-hieu-qua-cao/" title="Mẹo dưỡng tóc bằng chuối: chi phí thấp, hiệu quả cao">Mẹo dưỡng tóc bằng chuối: chi phí thấp, hiệu quả cao</a>
                        <!-- <span>(02-23)</span> -->
                    </li>
                    		    		                </ul>
            </div>
        </div>		<div id="eweb_post_by_cate_2-8" class="item-cate-2 item-cate">            <div class="subcat-2"><span><a href="http://bloglamme.com/suc-khoe-gia-dinh/" title=""><i class="fa fa-"></i> Sức khỏe gia đình</a></span></div>            <div class="list-posts">
                <ul>
                	                    <li>
                        <a class="bold" href="http://bloglamme.com/cay-thuoc-chua-benh-ve-gan-ke-ca-ung-thu-thoi-ky-cuoi/" title="Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối">
                            Cây thuốc chữa bệnh về gan, kể cả ung thư thời kỳ cuối                            <img width="500" height="833" src="http://bloglamme.com/wp-content/uploads/2016/05/blog-lam-me.jpg" class="attachment-thumb_301x216 wp-post-image" alt="blog lam me"/>                        </a>
                        <p>Đây là 1 bài thuốc chữa bệnh gan và ung thư của độc giả chia sẻ nhưng chưa được kiểm chứng, thông tin chưa [...]</p>
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nuoc-che-phong-va-chua-benh-tim-mach/" title="Nước chè phòng và chữa bệnh tim mạch">Nước chè phòng và chữa bệnh tim mạch</a>
                        <!-- <span>(04-12)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/canh-bao-viet-nam-dung-thu-2-ve-ti-le-mac-benh-ung-thu/" title="[Cảnh báo]: Việt Nam đứng thứ 2 về tỉ lệ mắc bệnh ung thư">[Cảnh báo]: Việt Nam đứng thứ 2 về tỉ lệ mắc bệnh ung thư</a>
                        <!-- <span>(04-02)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/nhung-dieu-toi-te-nhat-se-xay-ra-neu-ban-nhin-an-sang-thuong-xuyen/" title="Những điều tồi tệ nhất sẽ xảy ra nếu bạn nhịn ăn sáng thường xuyên">Những điều tồi tệ nhất sẽ xảy ra nếu bạn nhịn ăn sáng thường xuyên</a>
                        <!-- <span>(03-30)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/bung-phang-li-nho-loai-nuoc-ep-nay/" title="Bụng phẳng lì nhờ loại nước ép này !">Bụng phẳng lì nhờ loại nước ép này !</a>
                        <!-- <span>(03-26)</span> -->
                    </li>
                    		    		                    <li>
                        <a class="bold" href="http://bloglamme.com/loi-ich-cua-rau-xanh-doi-voi-suc-khoe-ma-ban-chua-he-biet/" title="Lợi ích của rau xanh đối với sức khỏe mà bạn chưa hề biết">Lợi ích của rau xanh đối với sức khỏe mà bạn chưa hề biết</a>
                        <!-- <span>(03-20)</span> -->
                    </li>
                    		    		                </ul>
            </div>
        </div>                        </div>
                                            </div>
                </div>
    </div>
</section>