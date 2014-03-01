<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
</script>
<div class="header_all">
    <div class="block clearfix header">
        <div class="f_l">
            <a href="index.php" name="top">
                <img src="themes/default/images/logo.png" />
            </a>
        </div>
        <div class="f_r log">
               <div class="userInfo">
                    <ul>
                       <?php if ($_SESSION['user_id'] > 0): ?>
                            <li><a href="user.php">My Account</a></li>
                            <li><a href="user.php?act=logout">Logout</a></li>
                            <li><a href="user.php?act=collection_list">Wish list</a></li>
							<li>
								
									
									<div class="title-div"><?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></div>
									
								 
							</li>
							
                        <?php else: ?>
                        
                            <li><a href="user.php">Login/Register</a></li>
                            <!-- <li><a href="user.php">My Account</a></li>-->
                            <li><a href="user.php">Wish list</a></li>
							<li>
								
									
									<div class="title-div"><?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></div>
									
								 
							</li>
							
                        <?php endif; ?>
                    </ul>
               
               </div>
        </div>
         
    </div>
</div>

