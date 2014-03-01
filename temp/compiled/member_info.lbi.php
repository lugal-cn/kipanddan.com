<!--<div id="append_parent"></div>


<?php if ($this->_var['user_info']): ?>

<font style="position:relative; top:10px;">

<?php echo $this->_var['lang']['hello']; ?>，<font class="f4_b"><?php echo $this->_var['user_info']['username']; ?></font>, <?php echo $this->_var['lang']['welcome_return']; ?>！

<a href="user.php"><?php echo $this->_var['lang']['user_center']; ?></a>|

 <a href="user.php?act=logout"><?php echo $this->_var['lang']['user_logout']; ?></a>

</font>

<?php else: ?>

 <?php echo $this->_var['lang']['welcome']; ?>&nbsp;&nbsp;&nbsp;&nbsp;

 <a href="user.php"><img src="themes/default/images/bnt_log.gif" /></a>

 <a href="user.php?act=register"><img src="themes/default/images/bnt_reg.gif" /></a>

<?php endif; ?>

-->



<!--
<ul class="top_r">
		
    <li class="main"><a href="category.php?id=3">SPRING/SUMMER</a></li>

    <li><a href="category.php?id=9">Dresses</a></li>

    <li><a href="category.php?id=11">Tops</a></li>

    <li><a href="category.php?id=10">Skirts</a></li>

    <li><a href="category.php?id=12">Jackets</a></li>

    <li class="new"><a href="search.php?intro=new&category=3">NEW</a></li>

    <li class="main"><a href="category.php?id=4">AUTUMN/WINTER</a></li>

    <li><a href="category.php?id=5">Dresses</a></li>

    <li><a href="category.php?id=7">Skirts</a></li>

    <li><a href="category.php?id=6">Tops</a></li>

    <li><a href="category.php?id=8">Pants</a></li>

    <li class="new"><a href="search.php?intro=new&category=4">NEW</a></li>
  
</ul>
-->
<?php echo $this->_var['category_list']; ?>
