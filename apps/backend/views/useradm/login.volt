
{{ content() }}

<div class="row">

    <div class="col-md-6">
        <div class="page-header">
            <h2>Log In</h2>
        </div>
        {{ form('useradm/auth', 'role': 'form') }}
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
                </div>
            </fieldset>
        </form>
        <input type="button" class="btn btn-primary btn-large" value="msg" id="show_msg" />
    </div>

    <div class="col-md-6">

        <div class="page-header">
            <h2>Tôi chưa có tài khoản ?</h2>
        </div>

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
            modal({
				type: 'success',
				title: 'Success',
				text: 'A simple success message!',
				size:'custom'
			});
		});        
    });
</script>
