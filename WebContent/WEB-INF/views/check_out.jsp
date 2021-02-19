<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="public/css/import/checkout.css" />

<link href="public/css/bootstrap/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="public/css/bootstrap/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="public/reset.css" rel="stylesheet" type="text/css" />
<link href="public/css/carousel/owl.carousel.css" rel="stylesheet"
	type="text/css" />
<link href="public/css/carousel/owl.theme.css" rel="stylesheet"
	type="text/css" />
<link href="public/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="public/style.css" rel="stylesheet" type="text/css" />
<link href="public/responsive.css" rel="stylesheet" type="text/css" />

<script src="public/js/jquery-3.4.1.js" type="text/javascript"></script>
<script src="public/js/test.js" type="text/javascript"></script>

<script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>
<script src="public/js/main.js" type="text/javascript"></script>
<style>
.message{
margin-top:8px;
font-size: 130%;
}

</style>
<title>Thanh Toán</title>
</head>
<body>
	<div id="site">
		<div id="container">
			<div id="header-wp">
				<div id="head-top" class="clearfix">
					<div class="wp-inner">
						<a href="" title="" id="payment-link" class="fl-left">Hình
							thức thanh toán</a>
						<div id="main-menu-wp" class="fl-right">
							<ul id="main-menu" class="clearfix">
								<li><a href="index.htm" title="">Trang chủ</a></li>
								<li><a href="error.htm" title="">Blog</a></li>
								<li><a href="error.htm" title="">Giới thiệu</a></li>
								<li><a href="error.htm" title="">Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="head-body" class="clearfix">
					<div class="wp-inner">
						<a href="index.htm" title="" id="logo" class="fl-left"><img
							src="public/images/logo.png" /></a>
						<div id="action-wp" class="fl-right">
							<div id="advisory-wp" class="fl-left">
								<span class="title">Tư vấn</span> <span class="phone">039.819.5599</span>
							</div>
							<div id="btn-respon" class="fl-right">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
							<a href="cart.htm" title="giỏ hàng" id="cart-respon-wp"
								class="fl-right"> <i class="fa fa-shopping-cart"
								aria-hidden="true"></i>
							</a>
							<div id="cart-wp" class="fl-right">
								<div id="btn-cart">
									<a href="cart.htm" title="giỏ hàng"> <i
										class="fa fa-shopping-cart" aria-hidden="true"></i>
									</a>
								</div>
								<div id="dropdown">
									<c:forEach var="u" items="${Cart }">
										<ul class="list-cart">
											<li class="clearfix"><a href="" title=""
												class="thumb fl-left"> <img
													src="public/images/${u.anh }" alt="">
											</a>
												<div class="info fl-right">
													<a href="" title="" class="product-name">${u.ten }</a>
													<p class="price">${u.gia }</p>
													<p class="qty">
														Số lượng: <span>${u.so_luong }</span>
													</p>
												</div></li>
										</ul>
									</c:forEach>
									<div class="action-cart clearfix">
										<a href="cart.htm" title="Thanh toán"
											class="checkout fl-right">Giỏ hàng</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="main-content-wp" class="home-page clearfix">
				<div id="main-content-wp" class="checkout-page">
					<div class="section" id="breadcrumb-wp">
						<div class="wp-inner">
							<div class="section-detail">
								<ul class="list-item clearfix">
									<li><a href="index.htm" title="">Trang chủ</a></li>
									<li><a href="buy_now.htm" title="">Đặt hàng</a></li>
								</ul>
							</div>
						</div>
					</div>
					${message}
					<form:form action="check_out.htm" modelAttribute="bill">
					<div id="wrapper" class="wp-inner clearfix">					
						<div class="section" id="customer-info-wp">
							<div class="section-head">
								<h1 class="section-title">Thông tin khách hàng</h1>
							</div>
							<div class="section-detail">
								<form method="POST" action="" name="form-checkout">
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<label for="fullname">Họ tên</label>
											<form:input path="ho_ten" placeholder="Họ và tên" />
										</div>
										<div class="form-col fl-right">
											<label for="address">Tỉnh/Thành Phố - Quận/Huyện</label> 
											<form:select path="tinh_huyen" id="address">
												<option value="Quận 9">Tp.Hồ Chí Minh - Quận 9 </option>
												<option value="Quận 1">Tp.Hồ Chí Minh - Quận 1</option>
												<option value="Quận 3">Tp.Hồ Chí Minh - Quận 3</option>
												<option value="Quận 4">Tp.Hồ Chí Minh - Quận 4</option>
												<option value="Quận Thủ Đức">Tp.Hồ Chí Minh - Quận Thủ Đức</option>
												<option value="Quận">---</option>
											</form:select>
										</div>
									</div>
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<label for="phone">Số điện thoại</label> 
											<form:input path="sdt" placeholder="(+84)398195599 " />
										</div>
										<div class="form-col fl-right">
											<label for="address">Xã - Phường</label> 
											<form:select path="xa_phuong" id="address">
												<option value="Hiệp Phú">Phường Hiệp Phú </option>
												<option value="Tân Phú">Phường Tân Phú </option>
												<option value="Phú Hữu">Phường Phú Hữu</option>
												<option value="Long Trường">Phường Long Trường</option>
												<option value="Long Thạnh Mỹ">Phường Long Thạnh Mỹ </option>
												<option value="Phường">---</option>
											</form:select>
										</div>
									</div>
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<label for="email">Email</label>
											<form:input path="email" placeholder="Email@gmail.com" />
										</div>
										<div class="form-col fl-right">
											<label for="address">Địa chỉ</label> 
											<form:input path="dia_chi" placeholder="Ghi rõ địa chỉ nhận hàng "/>
										</div>
									</div>
									<div class="form-row">
				                        <div class="form-col">
				                            <label for="notes">Ghi chú</label>
				                            <form:textarea path="ghi_chu" />
				                        </div>
				                    </div>
								</form>
							</div>
						</div>
						<div class="section" id="order-review-wp">
							<div class="section-head">
								<h1 class="section-title">Thông tin đơn hàng</h1>
							</div>
							<div class="section-detail">
								<table class="shop-table">									
									<thead>
										<tr>
											<td>Sản phẩm</td>
											<td>Size</td>
											<td>Màu</td>
											<td>Tổng</td>
										</tr>
									</thead>
									<tbody>										
									<c:forEach var="v" items="${Cart }">									
										<tr class="cart-item">																						
											<td class="product-name">
												<form:select class="n" path="ten">
													<option>${v.ten }</option>
												</form:select> x <form:select class="n" path="so_luong">
													<option>${v.so_luong }</option>
												</form:select></td>																							
											<td class="product-total">
												<form:select class="n" path="size">
													<option>${v.size }</option>
												</form:select></td>	
											<td class="product-total">
												<form:select class="n" path="mau">
													<option>${v.mau }</option>
												</form:select></td>	
											<td class="product-total">
												<form:select class="n" path="gia">
													<option>${v.tong_tien }</option>
												</form:select></td>										
										</tr>
									</c:forEach>									
									</tbody>
									<tfoot>										
									</tfoot>
								</table>
								<div id="payment-checkout-wp">
									<ul id="payment_methods">
										<li><input type="radio" id="direct-payment"
											name="payment-method" value="direct-payment"> <label
											for="direct-payment">Thanh toán tại cửa hàng</label></li>
										<li><input type="radio" id="payment-home"
											name="payment-method" value="payment-home"> <label
											for="payment-home">Thanh toán tại nhà</label></li>
									</ul>
								</div>
								<div class="place-order-wp clearfix">
									<button id="order-now">Đặt hàng</button>
									
									<div class="message">
									${message}
									<div class="element">
									<form:errors path="*" element="ult" />
									</div>
									</div>
								</div>
							</div>
						</div>						
					</div>
				</form:form>
				</div>

			</div>
			<div id="footer-wp">
				<div id="foot-body">
					<div class="wp-inner clearfix">
						<div class="block" id="info-company">
							<h3 class="title">ISMART</h3>
							<p class="desc">ISMART luôn cung cấp luôn là sản phẩm chính
								hãng có thông tin rõ ràng, chính sách ưu đãi cực lớn cho khách
								hàng có thẻ thành viên.</p>
							<div id="payment">
								<div class="thumb">
									<img src="public/images/img-foot.png" alt="">
								</div>
							</div>
						</div>
						<div class="block menu-ft" id="info-shop">
							<h3 class="title">Thông tin cửa hàng</h3>
							<ul class="list-item">
								<li>
									<p>97 - Man Thiện - Quận 9 - TP.HCM</p>
								</li>
								<li>
									<p>039.819.5599 - 0915.794.138</p>
								</li>
								<li>
									<p>mjnhyt1998@gmail.com</p>
								</li>
							</ul>
						</div>
						<div class="block menu-ft policy" id="info-shop">
							<h3 class="title">Chính sách mua hàng</h3>
							<ul class="list-item">
								<li><a href="index.htm" title="">Quy định - chính sách</a></li>
								<li><a href="index.htm" title="">Chính sách bảo hành -
										đổi trả</a></li>
								<li><a href="index.htm" title="">Chính sách hội viện</a></li>
								<li><a href="index.htm" title="">Giao hàng - lắp đặt</a></li>
							</ul>
						</div>
						<div class="block" id="newfeed">
							<h3 class="title">Fanpage</h3>
							<div id="form-reg"></div>
							<div class="fb-page widget-content">
								<iframe
									src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2F%C4%90o%C3%A0n-%C4%90%E1%BB%A9c-Minh-103615924391863%2F&tabs=timeline&width=262&height=210&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
									width="262" height="210" style="border: none; overflow: hidden">
								</iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="foot-bot">
				<div class="wp-inner">
					<p id="copyright">© Bản quyền thuộc về Minh | MVC Master</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>