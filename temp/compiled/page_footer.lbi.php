<div id="bottomNav" class="box">

</div>

<div class="blank"></div>

<div id="footer">

	
	
     <div class="text" style="float:left">
     	<?php $_from = $this->_var['class_articles_2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article');if (count($_from)):
    foreach ($_from AS $this->_var['article']):
?>
        <a href="<?php echo $this->_var['article']['url']; ?>"><?php echo sub_str($this->_var['article']['title'],50); ?></a>  |
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        
		  <!--
		  <a href="article.php?id=7">Intagram/Pinterest/Facebook/Twitter</a><br>
		  -->
        
     </div>
     <div class="img" style="float:right;">
     	<a href="#"><img src="themes/default/images/instagram.gif" width="25px"></a>
        <a href="#"><img src="themes/default/images/pinterest.gif" width="25px"></a>
        <a href="#"><img src="themes/default/images/facebook.gif" width="25px"></a>
        <a href="#"><img src="themes/default/images/twitter.gif" width="25px"></a>
     </div>
</div>

