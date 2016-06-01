<h3 class="page_title">Tin chưa duyệt</h3>
<div class="alert alert-warning" style="height: 100px">

	<!--<form role="form" action="{$baseurl}upload/up_image" method="POST" enctype="multipart/form-data">-->
		<input type="hidden" id="page_number" name="page" value="1">
		<div class="col-md-2">	      	
			<div class="form-group">
			      <label for="Status">Trạng thái</label>		      
			      <select type="text"  class="form-control" id="sreach_status" name="sreach_status" placeholder="status" value="" >	
			      	<!--<option value=""> </option>-->
			        <option value="0">Chưa duyệt</option>
			        <option value="1">Đã duyệt</option>
			        <option value="2">Đã xóa</option>
			      </select>	
			</div>
		</div>
		<!--<div class="col-md-2">
			<div class="form-group">
			      <label for="type">Loại</label>			      
			      <select type="text"  class="form-control" id="type" name="type" placeholder="type" value="" >	
			      	<option value=""> </option>
			        <option value="img">Ảnh</option>
			        <option value="video">Video</option>
			        <option value="blog">Cảm Xúc</option>
			      </select>
			</div>
		</div>-->
		<div class="col-md-2">
			<div class="form-group">
			      <label for="from_date">Ngày</label>
			      <input type="text" class="form-control" id="search_date" name="search_date" placeholder="YYYYMMDD" value="" >
			      
			</div>
		</div>
		<!--<div class="col-md-2">
			<div class="form-group">
			      <label for="to_date">Đến ngày</label>
			      <input type="text" class="form-control" id="to_date" name="to_date" placeholder="YYYYMMDD" value="{get_sysdate()}" >
			      
			</div>
		</div>-->
		<div class="col-md-2">
			<div class="form-group" >
				<br />
				<button id="btn_search" class="btn btn-success" name="search">Tìm</button>				
			</div>			
		</div>
		<div class="col-md-2">			
			<div class="form-group" >
				<br />				
				<button style="display: none;" id="btn_download" class="btn btn-success" name="search">Download Tin</button>
			</div>
		</div>
		
			
    	
	

</div>	
<form role="form" id="form_approval" action="" method="POST" enctype="multipart/form-data">
<div id="data_search">
	{{ partial('approval/listdata') }}
</div>

</form>
<script>
		
	//var data_user=$.parseJSON(par);
$(document).ready(function(){	
	$(document).on('click','#btn_approval',function(){
        var arr = $('#form_approval').serializeArray();
        Pho_json_ajax('POST',"{{url.get('approval/update')}}" ,arr,function(data){
            if(data.status =='OK'){
                Pho_message_box('Thông báo',data.msg); 
            }else{
                Pho_message_box_error('Lỗi',data.msg);
            }
        });
    });
	$(document).on('click','#btn_search',function(){		
	
		var sreach_status = $('#sreach_status').val();		
		Pho_html_ajax('POST',"{{url.get('approval/listdata')}}" ,{ status: sreach_status, search_date: $('#search_date').val() },function(data){
				$('#data_search').empty();
				$('#data_search').append(data);
            });	  
		if(sreach_status == 1)
		{
			$('#btn_download').show();
		}else{
			$('#btn_download').hide();
		}		
	});
});	
function show_update_result(data)
{	
	var class_color ='color_red';
	if(data.status=='OK'){		
		class_color ='color_blue';
		$( "#basicModal" ).dialog({
	        modal: true,       
	        draggable:false,
	        closeOnEscape: false,
	        title: "Thành công",
	        width:400,
	        position: { 
			    my: 'center',
			    at: 'center',
			    of: $('body')
			 }	,        
	        buttons: {
	            "OK": function() {
	            	//reset_input();
	                //location.href="{$baseurl}approval";	
	                $('#btn_search').click();
	                $( this ).dialog( "close" );                
	            },
	           
	        },
	        open: function() {						
				$(".ui-dialog-titlebar-close").hide();	
				//$(".ui-dialog-titlebar").hide();
				$("body").css({ overflow: 'hidden' })			
			},
			close: function() {
				$(".ui-dialog-titlebar-close").show();
				//$(".ui-dialog-titlebar").hide();
				$("body").css({ overflow: 'inherit' })
			}	
		});
		
	}
	
	
}
</script>