<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>

<link rel="shortcut icon" href="favicon.ico" />

<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link href="themes/default/css/login_reg.css" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,user.js,transport.js,jquery-1.10.2.min.js')); ?>
<script>
	/*自己添加的js提交的表格*/

	function submitForm(tracker){

		// Fix username with email register.
		var email = document.getElementById('emailinpu').value;

		var pwd = document.getElementById('passworinpu').value;

		var emailPattern=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

		

			if (email == '') {

				alert('Please enter your email address to register or login.');

			}else if(!emailPattern.test(email)){

				alert('Please enter a valid email address to register or login.');

			}else if(pwd == ''){

				alert('Please enter your password to register or login.');

			}else{

				if(tracker == 'register'){

					//checkemail(user,pwd);	

					//alert("register");
					
					var username = document.getElementById('usernameinput').value;
					if (username == '') {
						alert('Please enter your user name to register.');
						return true;
					}

					$("#act").attr("value","act_register");

					if(window.confirm("Do you want to register "+ username +"?"))
					{
				  		document.getElementById('loginForm').submit();
					}
					else
					{
						window.close;
					}

				}else if(tracker == 'signin'){

					$("#act").attr("value","act_login");

					//alert("signin");

					//loginemail(user,pwd);

					document.getElementById('loginForm').submit();

				} 

			}

	}


</script>
<body>
<?php echo $this->fetch('library/page_header2.lbi'); ?>

<div class="blank height91px"></div>


<?php if ($this->_var['action'] == 'log_reg'): ?>

<div class="usBox clearfix main">
	<div class="loginfrom">
    	<div id="title">LOGIN OR REGISTER</div>
        <div id="userform">
        	<form id="loginForm" method="post" name="loginForm" action="user.php" method="post">
            		<div id="usernam">
						<div>Email</div>
                    	<input class="input" type="text" id="emailinpu" name="email">
                    </div>
                    <div id="passwor">
						<div class="textdiv">Password</div><div class="textdiv" id="forgot"><a href="user.php?act=get_password" target="_blank">(Forgot your password?)</a></div>
                   		<input type="password" id="passworinpu" name="password">
                        <input type="hidden" id="act" name="act" value="act_login" />
               			<input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
                       
                    </div>
                    <div id="subajaxinfo">Please enter your email and password to register or login.</div>
                    
                    
                    <br/>
                    <div id="usernam">
						<div><?php echo $this->_var['lang']['label_username']; ?></div>
                    	<input class="input" type="text" id="usernameinput" name="username" onblur="is_registered(this.value);" />
                    	<p id="username_notice" class="notice-info"><?php echo $this->_var['lang']['register_user_name_description']; ?></p>
                    </div>
                    <br/>

                    <div id="submi">
                    	<div id="submicreate">
                        	<!-- <input type="button" id="subcreate" name="subcreate">-->
                            <A id="register" href="javascript:submitForm('register')"><div id="">REGISTER</div></A>
                        </div>
                        <div id="submisign">
                        	<!--<input type="button" id="subsign" name="subsign">-->
                            <A  id="signin" href="javascript:submitForm('signin')"><div id="">  LOGIN  </div></A>    
                        </div>
                    </div>
                    
            </form>
        </div>
		<div id="logintext">We promise to keep your email address confidential.</div>
    </div>  
</div>	

<?php endif; ?>




<?php if ($this->_var['action'] == 'login'): ?>
<div class="usBox clearfix">
   <div class="usBox_1 f_l">
       <div class="logtitle"></div>
       <form name="formLogin" action="user.php" method="post" onSubmit="return userLogin()">
            <table width="100%" border="0" align="left" cellpadding="3" cellspacing="5">
              <tr>
                <td width="15%" align="right"><?php echo $this->_var['lang']['label_username']; ?></td>
                <td width="85%"><input name="username" type="text" size="25" class="inputBg" /></td>
              </tr>
              <tr>
                <td align="right"><?php echo $this->_var['lang']['label_password']; ?></td>
                <td>
                <input name="password" type="password" size="15"  class="inputBg"/>
                </td>
              </tr>
              
              <?php if ($this->_var['enabled_captcha']): ?>
              <tr>
                <td align="right"><?php echo $this->_var['lang']['comment_captcha']; ?></td>
                <td><input type="text" size="8" name="captcha" class="inputBg" />
                <img src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?is_login=1&'+Math.random()" /> </td>
              </tr>
              <?php endif; ?>
              <tr>
                <td colspan="2"><input type="checkbox" value="1" name="remember" id="remember" /><label for="remember"><?php echo $this->_var['lang']['remember']; ?></label></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td align="left">
                <input type="hidden" name="act" value="act_login" />
                <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
                <input type="submit" name="submit" value="" class="us_Submit" />
                </td>
              </tr>
          <tr><td></td><td><a href="user.php?act=qpassword_name" class="f3"><?php echo $this->_var['lang']['get_password_by_question']; ?></a>&nbsp;&nbsp;&nbsp;<a href="user.php?act=get_password" class="f3"><?php echo $this->_var['lang']['get_password_by_mail']; ?></a></td></tr>
          </table>
        </form>
      </div>
      <div class="usTxt">
        <strong><?php echo $this->_var['lang']['user_reg_info']['0']; ?></strong>  <br />
        <strong class="f4"><?php echo $this->_var['lang']['user_reg_info']['1']; ?>：</strong><br />
        <?php if ($this->_var['car_off'] == 1): ?>
        <?php echo $this->_var['lang']['user_reg_info']['2']; ?><br />
        <?php endif; ?>
        <?php if ($this->_var['car_off'] == 0): ?>
        <?php echo $this->_var['lang']['user_reg_info']['8']; ?><br />
        <?php endif; ?>
        <?php echo $this->_var['lang']['user_reg_info']['3']; ?>：<br />
        1. <?php echo $this->_var['lang']['user_reg_info']['4']; ?><br />
        2. <?php echo $this->_var['lang']['user_reg_info']['5']; ?><br />
        3. <?php echo $this->_var['lang']['user_reg_info']['6']; ?><br />
        4. <?php echo $this->_var['lang']['user_reg_info']['7']; ?>  <br />
        <a href="user.php?act=register"><img src="themes/default/images/bnt_ur_reg.gif" /></a>
      </div>
	</div>
<?php endif; ?>



    <?php if ($this->_var['action'] == 'register'): ?>
    <?php if ($this->_var['shop_reg_closed'] == 1): ?>
    <div class="usBox">
      <div class="usBox_2 clearfix">
        <div class="f1 f5" align="center"><?php echo $this->_var['lang']['shop_register_closed']; ?></div>
      </div>
    </div>
    <?php else: ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
<div class="usBox">
  <div class="usBox_2 clearfix">
   <div class="regtitle"></div>
    <form action="user.php" method="post" name="formUser" onsubmit="return register();">
      <table width="100%"  border="0" align="left" cellpadding="5" cellspacing="3">
        <tr>
          <td width="13%" align="right"><?php echo $this->_var['lang']['label_username']; ?></td>
          <td width="87%">
          <input name="username" type="text" size="25" id="username" onblur="is_registered(this.value);" class="inputBg"/>
            <span id="username_notice" style="color:#FF0000"> *</span>
          </td>
        </tr>
        <tr>
          <td align="right"><?php echo $this->_var['lang']['label_email']; ?></td>
          <td>
          <input name="email" type="text" size="25" id="email" onblur="checkEmail(this.value);"  class="inputBg"/>
            <span id="email_notice" style="color:#FF0000"> *</span>
          </td>
        </tr>
        <tr>
          <td align="right"><?php echo $this->_var['lang']['label_password']; ?></td>
          <td>
          <input name="password" type="password" id="password1" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)" class="inputBg" style="width:179px;" />
            <span style="color:#FF0000" id="password_notice"> *</span>
          </td>
        </tr>
        <tr>
          <td align="right"><?php echo $this->_var['lang']['label_password_intensity']; ?></td>
          <td>
            <table width="145" border="0" cellspacing="0" cellpadding="1">
              <tr align="center">
                <td width="33%" id="pwd_lower"><?php echo $this->_var['lang']['pwd_lower']; ?></td>
                <td width="33%" id="pwd_middle"><?php echo $this->_var['lang']['pwd_middle']; ?></td>
                <td width="33%" id="pwd_high"><?php echo $this->_var['lang']['pwd_high']; ?></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right"><?php echo $this->_var['lang']['label_confirm_password']; ?></td>
          <td>
          <input name="confirm_password" type="password" id="conform_password" onblur="check_conform_password(this.value);"  class="inputBg" style="width:179px;"/>
            <span style="color:#FF0000" id="conform_password_notice"> *</span>
          </td>
        </tr>
        <?php $_from = $this->_var['extend_info_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'field');if (count($_from)):
    foreach ($_from AS $this->_var['field']):
?>
	<?php if ($this->_var['field']['id'] == 6): ?>
        <tr>
          <td align="right"><?php echo $this->_var['lang']['passwd_question']; ?></td>
          <td>
          <select name='sel_question'>
	  <option value='0'><?php echo $this->_var['lang']['sel_question']; ?></option>
	  <?php echo $this->html_options(array('options'=>$this->_var['passwd_questions'])); ?>
	  </select>
          </td>
        </tr>
        <tr>
          <td align="right" <?php if ($this->_var['field']['is_need']): ?>id="passwd_quesetion"<?php endif; ?>><?php echo $this->_var['lang']['passwd_answer']; ?></td>
          <td>
	  <input name="passwd_answer" type="text" size="25" class="inputBg" maxlengt='20'/><?php if ($this->_var['field']['is_need']): ?><span style="color:#FF0000"> *</span><?php endif; ?>
          </td>
        </tr>
	<?php else: ?>
        <tr>
          <td align="right" <?php if ($this->_var['field']['is_need']): ?>id="extend_field<?php echo $this->_var['field']['id']; ?>i"<?php endif; ?>><?php echo $this->_var['field']['reg_field_name']; ?>
          <td>
          <input name="extend_field<?php echo $this->_var['field']['id']; ?>" type="text" size="25" class="inputBg" /><?php if ($this->_var['field']['is_need']): ?><span style="color:#FF0000"> *</span><?php endif; ?>
          </td>
        </tr>
	<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      <?php if ($this->_var['enabled_captcha']): ?>
      <tr>
      <td align="right"><?php echo $this->_var['lang']['comment_captcha']; ?></td>
      <td><input type="text" size="8" name="captcha" class="inputBg" />
      <img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?'+Math.random()" /> </td>
      </tr>
      <?php endif; ?>
        <tr>
          <td>&nbsp;</td>
          <td><label>
            <input name="agreement" type="checkbox" value="1" checked="checked" />
            <?php echo $this->_var['lang']['agreement']; ?></label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="left">
          <input name="act" type="hidden" value="act_register" >
          <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
          <input name="Submit" type="submit" value="" class="us_Submit_reg">
          </td>
        </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td class="actionSub">
          <a href="user.php?act=login"><?php echo $this->_var['lang']['want_login']; ?></a><br />
          <a href="user.php?act=get_password"><?php echo $this->_var['lang']['forgot_password']; ?></a>
          </td>
        </tr>
      </table>
    </form>
  </div>
</div>
<?php endif; ?>
<?php endif; ?>



    <?php if ($this->_var['action'] == 'get_password'): ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
    <script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
<div class="usBox" style="font-family:Verdana;font-size:12px">
  <div class="usBox_2 clearfix" style="padding:43px 153px 60px 20px;">
  	<!--
  	<br />
    	<b>Forgotten your password?</b><br><br>
        
        Simply send an email to:　kip@kipanddan.com　and we'll forward your password to you.
    <br />
    -->

    <form action="user.php" method="post" name="getPassword" onsubmit="return submitPwdInfo();">
        <br />
        <table width="100%" border="0" align="center">
          <tr>
            <td colspan="2" align="center"><strong><?php echo $this->_var['lang']['username_and_email']; ?></strong></td>
          </tr>
          <tr>
            <td width="29%" align="right"><?php echo $this->_var['lang']['username']; ?></td>
            <td width="61%"><input name="user_name" type="text" size="30" class="inputBg" /></td>
          </tr>
          <tr>
            <td align="right"><?php echo $this->_var['lang']['email']; ?></td>
            <td><input name="email" type="text" size="30" class="inputBg" /></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="hidden" name="act" value="send_pwd_email" />
              <input type="submit" name="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="bnt_blue" style="border:none;" />
              <input name="button" type="button" onclick="history.back()" value="<?php echo $this->_var['lang']['back_page_up']; ?>" style="border:none;" class="bnt_blue_1" />
	    </td>
          </tr>
        </table>
        <br />
      </form>

  </div>
</div>
<?php endif; ?>


    <?php if ($this->_var['action'] == 'qpassword_name'): ?>
<div class="usBox">
  <div class="usBox_2 clearfix">
    <form action="user.php" method="post">
        <br />
        <table width="70%" border="0" align="center">
          <tr>
            <td colspan="2" align="center"><strong><?php echo $this->_var['lang']['get_question_username']; ?></strong></td>
          </tr>
          <tr>
            <td width="29%" align="right"><?php echo $this->_var['lang']['username']; ?></td>
            <td width="61%"><input name="user_name" type="text" size="30" class="inputBg" /></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="hidden" name="act" value="get_passwd_question" />
              <input type="submit" name="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="bnt_blue" style="border:none;" />
              <input name="button" type="button" onclick="history.back()" value="<?php echo $this->_var['lang']['back_page_up']; ?>" style="border:none;" class="bnt_blue_1" />
	    </td>
          </tr>
        </table>
        <br />
      </form>
  </div>
</div>
<?php endif; ?>


    <?php if ($this->_var['action'] == 'get_passwd_question'): ?>
<div class="usBox">
  <div class="usBox_2 clearfix">
    <form action="user.php" method="post">
        <br />
        <table width="70%" border="0" align="center">
          <tr>
            <td colspan="2" align="center"><strong><?php echo $this->_var['lang']['input_answer']; ?></strong></td>
          </tr>
          <tr>
            <td width="29%" align="right"><?php echo $this->_var['lang']['passwd_question']; ?>：</td>
            <td width="61%"><?php echo $this->_var['passwd_question']; ?></td>
          </tr>
          <tr>
            <td align="right"><?php echo $this->_var['lang']['passwd_answer']; ?>：</td>
            <td><input name="passwd_answer" type="text" size="20" class="inputBg" /></td>
          </tr>
          <?php if ($this->_var['enabled_captcha']): ?>
          <tr>
            <td align="right"><?php echo $this->_var['lang']['comment_captcha']; ?></td>
            <td><input type="text" size="8" name="captcha" class="inputBg" />
            <img src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?is_login=1&'+Math.random()" /> </td>
          </tr>
          <?php endif; ?>
          <tr>
            <td></td>
            <td><input type="hidden" name="act" value="check_answer" />
              <input type="submit" name="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="bnt_blue" style="border:none;" />
              <input name="button" type="button" onclick="history.back()" value="<?php echo $this->_var['lang']['back_page_up']; ?>" style="border:none;" class="bnt_blue_1" />
	    </td>
          </tr>
        </table>
        <br />
      </form>
  </div>
</div>
<?php endif; ?>

<?php if ($this->_var['action'] == 'reset_password'): ?>
    <script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
<div class="usBox">
  <div class="usBox_2 clearfix">
    <form action="user.php" method="post" name="getPassword2" onSubmit="return submitPwd()">
      <br />
      <table width="80%" border="0" align="center">
        <tr>
          <td><?php echo $this->_var['lang']['new_password']; ?></td>
          <td><input name="new_password" type="password" size="25" class="inputBg" /></td>
        </tr>
        <tr>
          <td><?php echo $this->_var['lang']['confirm_password']; ?>:</td>
          <td><input name="confirm_password" type="password" size="25"  class="inputBg"/></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="hidden" name="act" value="act_edit_password" />
            <input type="hidden" name="uid" value="<?php echo $this->_var['uid']; ?>" />
            <input type="hidden" name="code" value="<?php echo $this->_var['code']; ?>" />
            <input type="submit" name="submit" value="<?php echo $this->_var['lang']['confirm_submit']; ?>" />
          </td>
        </tr>
      </table>
      <br />
    </form>
  </div>
</div>
<?php endif; ?>

<div class="blank"></div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>
</body>
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
<?php $_from = $this->_var['lang']['passport_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var username_exist = "<?php echo $this->_var['lang']['username_exist']; ?>";
</script>
</html>
