
{{ content() }}

<div class="row">

    <div class="col-md-6">
        <div class="page-header">
            <h2>Log In</h2>
        </div>
        <form action="" method="post" enctype="multipart/form-data" id="form_login">
            <fieldset>
                <div class="form-group">
                    <label for="email">Username/Email</label>
                    <div class="controls">
                        {{ text_field('email', 'class': "form-control") }}
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="controls">
                        {{ password_field('password', 'class': "form-control") }}
                    </div>
                </div>
                <div class="form-group">
                    {{ submit_button('Login', 'class': 'btn btn-primary btn-large') }}
                    <input type="button" class="btn btn-primary btn-large" value="Login" id="action_login" />
                </div>
            </fieldset>
        </form>
        <input type="button" class="btn btn-primary btn-large" value="msg" id="show_msg" />
        <input type="button" class="btn btn-primary btn-large" value="err" id="show_err" />
    </div>

    <div class="col-md-6">

        <div class="page-header">
            <h2>Tôi chưa có tài khoản ?</h2>
        </div>
        {{ pass }}
        {{url.getStatic('aa')}}
        <p>Tạo mới tài khoản</p>
        <!--<ul>
            <li>Create, track and export your invoices online</li>
            <li>Gain critical insights into how your business is doing</li>
            <li>Stay informed about promotions and special packages</li>
        </ul>-->

        <div class="clearfix center">
            {{ link_to('register', 'Sign Up', 'class': 'btn btn-primary btn-large btn-success') }}
        </div>
    </div>

</div>
<script>
    /*$('#show_msg').click(function(){
        alert('f');
    });*/
    $(document).ready(function(e) {
		//alert
		$('#show_msg').click(function() {			
            Pho_ajax.message_box('Thông báo','Thành công',function(){alert('123')});
		}); 
        $('#show_err').click(function() {			
            Pho_ajax.message_box_error('Lỗi','lỗi',function(){alert('123')});
		}); 
        $(document).on('click','#action_login',function(){
            var arr =  {email:$('#email').val(),password:$('#password').val()};//$('#form_login').serializeArray();	
            //var arr = $('#form_login').serializeArray();
            //var $arr = new FormData();//$('#form_login').serializeArray();
            //arr.push({name: 'email', value: $('#email').val()});     
            //arr.push({name: 'password', value: $('#password').val()});     
            console.log(arr);
            Pho_json_ajax('POST',"{{url.get('useradm/auth')}}" ,arr,function(data){
                if(data.status =='OK'){
                    Pho_message_box('Thông báo',data.msg); 
                }else{
                    Pho_message_box_error('Lỗi',data.msg);
                }
            });
            //$('#form_login').submit();
        });
        $('#form_login').submit(function(event) {
            var arr = new FormData(this);
            console.log(arr);
            Pho_json_ajax('POST',"{{url.get('useradm/auth')}}" ,arr,function(data){
                if(data.status =='OK'){
                    Pho_message_box('Thông báo',data.msg); 
                }else{
                    Pho_message_box_error('Lỗi',data.msg);
                }
            });
        });
            
        
    });
</script>
