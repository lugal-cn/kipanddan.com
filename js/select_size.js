$(function(){
	$(".size_select").click(function(i){
		$(this).siblings().css('background-color','#eeeeee');
		$(this).css('background-color','#666666');							   
	});		   
		   
		   
		   
});
function select_size_switch(id){
	var id = id;
	$("#size_option").val(id);

}
function openoption(){
	
	$(".notice_info").text("Please select a size to proceed.");
	
}



/* *

 * 添加商品到购物车 

 */

function addToCart(goodsId, parentId)

{

  

  var goods        = new Object();

  var spec_arr     = new Array();

  var fittings_arr = new Array();

  var number       = 1;

  var formBuy      = document.forms['ECS_FORMBUY'];

  var quick		   = 0;

  var size         ='';

  var color        ='';


  if (formBuy)

  {

    spec_arr = getSelectedAttributes(formBuy);



	number = formBuy.elements['number'].value;

	size = formBuy.elements['size'].value;

	color = formBuy.elements['color'].value;

	

    if (formBuy.elements['number'])

    {

      number = formBuy.elements['number'].value;

    }

	quick = 1;

  }

	if(size == ''){
		
		openoption(goodsId);
	}else{
		
		goods.quick    = quick;	  //quick 0,1

		//模拟做出一个数组，是发给添加数据库的，代替上面的getSelectedAttributes函数

  		//goods.spec     = spec_arr;  //衣服的属性的id，数组

		goods.spec    = new Array(size,color);		
		
 		goods.goods_id = goodsId;	  //产品的id

 		goods.number   = number;	  //number  衣服的数量

  		goods.parent   = (typeof(parentId) == "undefined") ? 0 : parseInt(parentId);

 		Ajax.call('flow.php?step=add_to_cart', 'goods=' + goods.toJSONString(), addToCartResponse, 'POST', 'JSON');
		

	 }

}

/**

 * 获得选定的商品属性

 */

function getSelectedAttributes(formBuy)

{

  var spec_arr = new Array();

  var j = 0;



  for (i = 0; i < formBuy.elements.length; i ++ )

  {

    var prefix = formBuy.elements[i].name.substr(0, 5);

	

    if (prefix == 'spec_' && (

      ((formBuy.elements[i].type == 'radio' || formBuy.elements[i].type == 'checkbox') && formBuy.elements[i].checked) ||

      formBuy.elements[i].tagName == 'SELECT'))

    {

      spec_arr[j] = formBuy.elements[i].value;

      j++ ;

    }

  }



  return spec_arr;

  /*返回一个数组，就是所有的id goods_attr_id  (31,34)*/

}


function addToCartResponse(result)
{
  if (result.error > 0)
  {
		alert('Sorry, there was an error.');
    
  }
  else
  {
		
		alert('Item has been added to cart');
  }

}
