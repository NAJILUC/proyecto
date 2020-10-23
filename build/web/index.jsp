<%-- 
    Document   : index.jsp
    Created on : 20/10/2020, 08:52:26 PM
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Adidas</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
  <div class="header-top">
	 <div class="wrap"> 
		<div class="logo">
			<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
	    </div>
	   
		<ul class="icon2 sub-icon2 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon2 list">
					<li><h3>Products</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>
		<div class="clear"></div>
 	</div>
   </div>
   <div class="header-bottom">
   	<div class="wrap">
   		<!-- start header menu -->
		<ul class="megamenu skyblue">
		    <li><a class="color1" href="index.jsp">Home</a></li>
                     <li><a class="color1" href="Controlador?accion=listar">Productos</a></li>
                      <li><a class="color1" href="Controlador?accion=add">Agregar Productos</a></li>
                       <li><a class="color1" href="Controlador?accion=empresa">Agregar Empresas</a></li>
                        <li><a class="color1" href="Controlador?accion=tabla">Lista de Productos</a></li>
                        <li><a type="button" class="color" data-toggle="modal" data-target="#exampleModal">
  Contacto
</a></li>
                      
			
  			  
		   </ul>
		   <div class="clear"></div>
     	</div>
       </div>
       <div class="index-banner">
       	  <div class="wmuSlider example1" style="height: 560px;">
			  <div class="wmuSliderWrapper">
				  <article style="position: relative; width: 100%; opacity: 1;"> 
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Clasico</h1>
						    <h2>Alto</h2>
						    <p>Blanco con verde</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
					</article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Clasico</h1>
						    <h2>Bajo</h2>
						    <p>Blanco con azul y negro</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Clasico</h1>
						    <h2>Alto</h2>
						    <p>Blanco con verde</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Clasico</h1>
						    <h2>Bajo</h2>
						    <p>Blanco con azul</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Clasico</h1>
						    <h2>Alto</h2>
						    <p>Blanco con verde</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
			      </article>
				</div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                	<li><a href="#">3</a></li>
                	<li><a href="#">4</a></li>
                  </ul>
                 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li><li><a href="#" class="">3</a></li><li><a href="#" class="">4</a></li></ul></div>
            	 <script src="js/jquery.wmuSlider.js"></script> 
				 <script type="text/javascript" src="js/modernizr.custom.min.js"></script> 
						<script>
       						 $('.example1').wmuSlider();         
   						</script> 	           	      
             </div>
             <div class="main">
                <div class="wrap">
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Formulario de Contacto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
           <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Nombre</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Nombre">
  </div>
  <div class="form-group">
      
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
               
 
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Enviar</button>
      </div>
    </div>
  </div>
</div>
             	  <div class="content-top">
             		<div class="lsidebar span_1_of_c1">
					  <p>Para mayor informacion, aca nuestras redes:</p>
					</div>
					<div class="cont span_2_of_c1">
					  <div class="social">	
					     <ul>	
						  <li class="facebook"><a href="https://web.facebook.com/adidasCO/?brand_redir=182162001806727"><span> </span></a><div class="radius"> <img src="images/radius.png"><a href="#"> </a></div><div class="border hide"><p class="num">Facebook</p></div></li>
						 </ul>
			   		   </div>
					   <div class="social">	
						   <ul>	
							  <li class="twitter"><a href="https://twitter.com/adidas"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">Twitter</p></div></li>
						  </ul>
			     		</div>
						 <div class="social">	
						   <ul>	
							  <li class="google"><a href="https://www.google.com/search?q=adidas&sxsrf=ALeKk03T6a6FyEVSDVs1VMkKkqpIwK-NXw:1603383813424&source=lnms&tbm=nws&sa=X&ved=2ahUKEwj0xoyVzsjsAhWtslkKHfM0D1wQ_AUoBHoECAwQBg&biw=1366&bih=699"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">Noticias</p></div></li>
						   </ul>
			    		 </div>
						 <div class="social">	
						   <ul>	
							  <li class="dot"><a href="https://www.facebook.com/profile.php"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">Tu perfil</p></div></li>
						  </ul>
			     		</div>
						<div class="clear"> </div>
					  </div>
					  <div class="clear"></div>			
				   </div>
                    
                    <div class="content">
                       
                         <div class="toogle">
     	<h3 class="m_3">Quienes somos </h3>
     	<p class="m_text">Adidas diseña ropa deportiva para atletas de todo tipo. Creadores que disfrutan de cambiar las reglas del juego. Desafiar las convenciones. Romper las normas y definir nuevas. Y volverlas a romper. Confeccionamos la ropa que visten equipos y jugadores individuales en preparación para el partido. Para que no pierdan la concentración. Diseñamos indumentaria deportiva para que llegues a la meta. Para que ganes el partido. Somos la tienda especializada en ropa deportiva para mujeres, con tops deportivos y licras diseñados con un objetivo en mente. Para deportes de impacto bajo, medio o alto. Diseñamos, innovamos e iteramos. Ponemos a prueba nuevas tecnologías. En el campo, en la cancha, en la pista, en la piscina. La ropa deportiva retro inspira nuevos elementos esenciales de la ropa urbana. Como los NMD y las sudaderas Firebird. Los modelos deportivos clásicos vuelven a la vida. Como los Stan Smith y los Superstar. Ahora en todas las calles y en los escenarios más destacados.</p>
     </div>
                        <div class="clear"></div>
                                    <div class="toogle">
     	<h3 class="m_3">Nuestros Productos</h3>
     	</div>
                    </div>
				  <div class="content-bottom">
				   
			  <div class="clear"></div>
	       </div>
                    <%
                    
                        ProductoDAO dao=new ProductoDAO();
                        List<Producto> list=dao.listar();
                        Iterator<Producto>iter=list.iterator();
                        Producto pro=null;
                        
                        int c=0;
                        int l=0;
                        
                        while(iter.hasNext()){
                            pro=iter.next();
                            l++;
                            c++;
                            String imagen="images/pic"+l+".jpg";
                            
                            if(c==1){
                        
                    %>
                    
			  <div class="box1">
				  <%}
                                  
                                  String referencia="vistas/single.jsp?id="+pro.getId();
                                  %>
				 
                                  
				   <div class="col_1_of_single1 span_1_of_single1"><a href=<%=referencia%>>
				     <div class="view1 view-fifth1">
				  	  <div class="top_box">
					  	<h3 class="m_1"><%=pro.getNombre()%>"</h3>
					  	<p class="m_2"><%=pro.getDetalle()%></p>
				         <div class="grid_img">
                                             <div class="css3"><img src=<%=imagen%> alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">Quick View</div>
			                  </div>
	                    </div>
                       <div class="price">$<%=pro.getValor()%></div>
					   </div>
					    </div>
					   <span class="rating1">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list2">
						  <li>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">Add To Bag </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				  
                                  
                                  <%if(c==3 || l==list.size()){
                                      c=0;
                                  %>
                                  <div class="clear"></div>
			  </div>
                          <%}
                          if(l==6){

                            break;
}
}%>
			  </div>
			  <div class="clear"></div>
                          
			  </div>
			 </div>
        </div>
        <div class="footer">
       	  <div class="footer-top">
       		<div class="wrap">
       			   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	 <ul class="f_list">
				  	 	<li><img src="images/f_icon.png" alt=""/><span class="delivery">Free delivery on all orders over £100*</span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="images/f_icon1.png" alt=""/><span class="delivery">Customer Service :<span class="orange"> (800) 000-2587 (freephone)</span></span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="images/f_icon2.png" alt=""/><span class="delivery">Fast delivery & free returns</span></li>
				  	 </ul>
				   </div>
				  <div class="clear"></div>
			 </div>
       	 </div>
       	 <div class="footer-middle">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_middle span_1_of_middle">
					<dl id="sample" class="dropdown">
			        <dt><a href="#"><span>Please Select a Country</span></a></dt>
			        <dd>
			            <ul>
			                <li><a href="#">Australia<img class="flag" src="images/as.png" alt="" /><span class="value">AS</span></a></li>
			                <li><a href="#">Sri Lanka<img class="flag" src="images/srl.png" alt="" /><span class="value">SL</span></a></li>
			                <li><a href="#">Newziland<img class="flag" src="images/nz.png" alt="" /><span class="value">NZ</span></a></li>
			                <li><a href="#">Pakistan<img class="flag" src="images/pk.png" alt="" /><span class="value">Pk</span></a></li>
			                <li><a href="#">United Kingdom<img class="flag" src="images/uk.png" alt="" /><span class="value">UK</span></a></li>
			                <li><a href="#">United States<img class="flag" src="images/us.png" alt="" /><span class="value">US</span></a></li>
			            </ul>
			         </dd>
   				    </dl>
   				 </div>
				<div class="col_1_of_middle span_1_of_middle">
					<ul class="f_list1">
						<li><span class="m_8">Sign up for email and Get 15% off</span>
						<div class="search">	  
							<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="Subscribe" id="submit" name="submit">
							<div id="response"> </div>
			 			</div><div class="clear"></div>
			 		    </li>
					</ul>
				</div>
				<div class="clear"></div>
			   </div>
       	 	</div>
       	 </div>
       	 <div class="footer-bottom">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Shop</h3>
					<ul class="sub_list">
						<h4 class="m_10">Men</h4>
					    <li><a href="shop.html">Men's Shoes</a></li>
			            <li><a href="shop.html">Men's Clothing</a></li>
			            <li><a href="shop.html">Men's Accessories</a></li>
			        </ul>
			             <ul class="sub_list">
				            <h4 class="m_10">Women</h4>
				            <li><a href="shop.html">Women's Shoes</a></li>
				            <li><a href="shop.html">Women's Clothing</a></li>
				            <li><a href="shop.html">Women's Accessories</a></li>
				         </ul>
				         <ul class="sub_list">
				            <h4 class="m_10">Kids</h4>
				            <li><a href="shop.html">Kids Shoes</a></li>
				            <li><a href="shop.html">Kids Clothing</a></li>
				            <li><a href="shop.html">Kids Accessories</a></li>
				         </ul>
				        <ul class="sub_list">
				            <h4 class="m_10">style</h4>
				            <li><a href="shop.html">Porsche Design Sport</a></li>
				            <li><a href="shop.html">Porsche Design Shoes</a></li>
				            <li><a href="shop.html">Porsche Design Clothing</a></li>
				        </ul>
				        <ul class="sub_list">
				            <h4 class="m_10">Adidas Neo Label</h4>
				            <li><a href="shop.html">Adidas NEO Shoes</a></li>
				            <li><a href="shop.html">Adidas NEO Clothing</a></li>
				        </ul>
				        <ul class="sub_list1">
				            <h4 class="m_10">Customise</h4>
				            <li><a href="shop.html">mi adidas</a></li>
				            <li><a href="shop.html">mi team</a></li>
				            <li><a href="shop.html">new arrivals</a></li>
				        </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Sports</h3>
					<ul class="list1">
					    <li><a href="shop.html">Basketball</a></li>
			            <li><a href="shop.html">Football</a></li>
			            <li><a href="shop.html">Football Boots</a></li>
			            <li><a href="shop.html">Predator</a></li>
			            <li><a href="shop.html">F50</a></li>
			            <li><a href="shop.html">Football Clothing</a></li>
			            <li><a href="shop.html">Golf</a></li>
			            <li><a href="shop.html">Golf Shoes</a></li>
			            <li><a href="shop.html">Golf Clothing</a></li>
			            <li><a href="shop.html">Outdoor</a></li>
			            <li><a href="shop.html">Outdoor Shoes</a></li>
			            <li><a href="shop.html">Outdoor Clothing</a></li>
			            <li><a href="shop.html">Rugby</a></li>
			            <li><a href="shop.html">Running</a></li>
			            <li><a href="shop.html">Running Shoes</a></li>
			            <li><a href="shop.html">Boost</a></li>
			            <li><a href="shop.html">Supernova</a></li>
			            <li><a href="shop.html">Running Clothing</a></li>
			            <li><a href="shop.html">Swimming</a></li>
			            <li><a href="shop.html">Tennis</a></li>
			            <li><a href="shop.html">Tennis Shoes</a></li>
			            <li><a href="shop.html">Tennis Clothing</a></li>
			            <li><a href="shop.html">Training</a></li>
			            <li><a href="shop.html">Training Shoes</a></li>
			            <li><a href="shop.html">Training Clothing</a></li>
			            <li><a href="shop.html">Training Accessories</a></li>
			            <li><a href="shop.html">miCoach</a></li>
			            <li><a href="shop.html">All Sports</a></li>
			         </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Originals</h3>
					<ul class="list1">
					    <li><a href="shop.html">Originals Shoes</a></li>
			            <li><a href="shop.html">Gazelle</a></li>
			            <li><a href="shop.html">Samba</a></li>
			            <li><a href="shop.html">LA Trainer</a></li>
			            <li><a href="shop.html">Superstar</a></li>
			            <li><a href="shop.html">SL</a></li>
			            <li><a href="shop.html">ZX</a></li>
			            <li><a href="shop.html">Campus</a></li>
			            <li><a href="shop.html">Spezial</a></li>
			            <li><a href="shop.html">Dragon</a></li>
			            <li><a href="shop.html">Originals Clothing</a></li>
			            <li><a href="shop.html">Firebird</a></li>
			            <li><a href="shop.html">Originals Accessories</a></li>
			            <li><a href="shop.html">Men's Originals</a></li>
			            <li><a href="shop.html">Women's Originals</a></li>
			            <li><a href="shop.html">Kid's Originals</a></li>
			            <li><a href="shop.html">All Originals</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Product Types</h3>
					<ul class="list1">
					    <li><a href="shop.html">Shirts</a></li>
					    <li><a href="shop.html">Pants & Tights</a></li>
					    <li><a href="shop.html">Shirts</a></li>
					    <li><a href="shop.html">Jerseys</a></li>
					    <li><a href="shop.html">Hoodies & Track Tops</a></li>
					    <li><a href="shop.html">Bags</a></li>
					    <li><a href="shop.html">Jackets</a></li>
					    <li><a href="shop.html">Hi Tops</a></li>
					    <li><a href="shop.html">SweatShirts</a></li>
					    <li><a href="shop.html">Socks</a></li>
					    <li><a href="shop.html">Swimwear</a></li>
					    <li><a href="shop.html">Tracksuits</a></li>
					    <li><a href="shop.html">Hats</a></li>
					    <li><a href="shop.html">Football Boots</a></li>
					    <li><a href="shop.html">Other Accessories</a></li>
					    <li><a href="shop.html">Sandals & Flip Flops</a></li>
					    <li><a href="shop.html">Skirts & Dresseses</a></li>
					    <li><a href="shop.html">Balls</a></li>
					    <li><a href="shop.html">Watches</a></li>
					    <li><a href="shop.html">Fitness Equipment</a></li>
					    <li><a href="shop.html">Eyewear</a></li>
					    <li><a href="shop.html">Gloves</a></li>
					    <li><a href="shop.html">Sports Bras</a></li>
					    <li><a href="shop.html">Scarves</a></li>
					    <li><a href="shop.html">Shinguards</a></li>
					    <li><a href="shop.html">Underwear</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Support</h3>
					<ul class="list1">
					   <li><a href="shop.html">Store finder</a></li>
					   <li><a href="shop.html">Customer Service</a></li>
					   <li><a href="shop.html">FAQ</a></li>
					   <li><a href="shop.html">Online Shop Contact Us</a></li>
					   <li><a href="shop.html">about adidas Products</a></li>
					   <li><a href="shop.html">Size Charts </a></li>
					   <li><a href="shop.html">Ordering </a></li>
					   <li><a href="shop.html">Payment </a></li>
					   <li><a href="shop.html">Shipping </a></li>
					   <li><a href="shop.html">Returning</a></li>
					   <li><a href="shop.html">Using out Site</a></li>
					   <li><a href="shop.html">Delivery Terms</a></li>
					   <li><a href="shop.html">Site Map</a></li>
					   <li><a href="shop.html">Gift Card</a></li>
					  
		            </ul>
		            <ul class="sub_list2">
		               <h4 class="m_10">Company Info</h4>
			           <li><a href="shop.html">About Us</a></li>
			           <li><a href="shop.html">Careers</a></li>
			           <li><a href="shop.html">Press</a></li>
			        </ul>
				</div>
				<div class="clear"></div>
			</div>
       	 	</div>
       	 </div>
       	 <div class="copy">
       	   <div class="wrap">
       	   	  <p>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></p>
       	   </div>
       	 </div>
       </div>
       <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>
