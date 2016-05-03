
<script type="text/javascript">
var Pho_message_box = function (title, msg, closed_func, style) { //Edit NBKD-1107 - Tin-VNIT - 2015/06/24
	modal({
		type: 'info',
		title: title,
		text: msg,
		size:'normal',      
        closeClick: false,
        closable: true, 
        callback: function() {
					if(closed_func){
                        closed_func();
                    }
				}
	});
};

var Pho_message_box_error = function (title, msg, closed_func, style) { 
	modal({
		type: 'error',
		title: title,
		text: msg,
		size:'normal',      
        closeClick: false,
        closable: true, 
        callback: function() {
					if(closed_func){
                        closed_func();
                    }
		}
        
	});
};
var Pho_json_ajax= function (type,url,data,done_fun){
    $.ajax({
	       	url: url,
			type: type,//"POST",
			data:  data,
			//contentType:"application/json",// false,
	    	cache: false,
			processData:false,
			success: function(data)
			{	
				done_fun(data);
			},
			error: function() 
		    {
		    	Pho_message_box_error('Lỗi','Lỗi ajax !!!');
		    } 
		    ,dataType: 'json'	        
	});
};

</script>
<div id="loading_dialog"></div>
<div id="modal_message"></div>