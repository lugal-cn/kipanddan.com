<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title>Kipanddan Home Page</title>



<link rel="shortcut icon" href="favicon.ico" />
<!--<link rel="icon" href="animated_favicon.gif" type="image/gif" />-->

<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link href="themes/default/css/index.css" rel="stylesheet" type="text/css" />
<link href="themes/default/css/jquery.bxslider.css" rel="stylesheet" type="text/css" />


<link rel="alternate" type="application/rss+xml" title="RSS|<?php echo $this->_var['page_title']; ?>" href="<?php echo $this->_var['feed_url']; ?>" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,index.js,jquery-1.10.2.min.js,jquery.bxslider.min.js')); ?>
<script language="javascript">
	$(document).ready(function(){
	  $('.slider4').bxSlider({
		slideWidth:230,
		slideHeight:400,
		minSlides: 2,
		maxSlides: 3,
		moveSlides: 1,
		slideMargin: 10,
		auto: true,
		pause:2000,
	  });
	});
</script>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>

<div class='content'>
        <div class="slider4">
            <?php $_from = $this->_var['lunhuan']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'lunhuan_0_22110200_1393577796');if (count($_from)):
    foreach ($_from AS $this->_var['lunhuan_0_22110200_1393577796']):
?>
                    <div class="slide"><a href="<?php echo $this->_var['lunhuan_0_22110200_1393577796']['ad_link']; ?>" target="_blank"><img src="/an_website/data/afficheimg/<?php echo $this->_var['lunhuan_0_22110200_1393577796']['ad_code']; ?>"></a></div>
             <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
</div>

<?php echo $this->fetch('library/page_footer.lbi'); ?>
</body>
</html>
