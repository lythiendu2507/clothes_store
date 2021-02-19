<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="public/css/import/home.css" />
<link rel="stylesheet" href="public/css/import/detail_product.css" />

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

<script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="public/js/jquery-3.4.1.js" type="text/javascript"></script>
<script src="public/js/show_img.js" type="text/javascript"></script>
<script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>
<script src="public/js/main.js" type="text/javascript"></script>
<title>Chi tiết sản phẩm</title>
</head>
<body>
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0">
		
	</script>
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

				<div id="main-content-wp" class="clearfix detail-product-page">
					<div class="wp-inner">
						<div class="secion" id="breadcrumb-wp">
							<div class="secion-detail">
								<ul class="list-item clearfix">
									<li><a href="index.htm" title="">Trang chủ</a></li>
									<li><a href="" title="">chi tiết sản phẩm</a></li>
								</ul>
							</div>
						</div>
						<div class="main-content fl-right">
							<div class="section" id="detail-product-wp">
								<div class="section-detail clearfix">
									<div class="thumb-wp fl-left">
										<c:if
											test="${not empty param.param0
												&& not empty param.param1
								        		&& not empty param.param2
								        		&& not empty param.param3
								        		&& not empty param.param4
								        		&& not empty param.param5
								        		&& not empty param.param6
								        		&& not empty param.param7}">
											<div id="thumb">
												<a href="" title="" id="main-thumb"> <img
													src="public/images/<c:out value="${param.param0 }"/>" />
												</a>
											</div>
											<div id="post" class="clearfix">
												<a href=""> <img
													src="public/images/<c:out value="${param.param1 }"/>" />
												</a> <a href=""> <img
													src="public/images/<c:out value="${param.param2 }"/>" />
												</a> <a href=""> <img
													src="public/images/<c:out value="${param.param3 }"/>" />
												</a> <a href=""> <img
													src="public/images/<c:out value="${param.param4 }"/>" />
												</a>
											</div>
										</c:if>
									</div>
									<div class="info fl-right">
										<form:form action="product.htm" modelAttribute="cart">
											<h3 class="product-name">
												<form:select class="mmm" path="ten">
													<option><c:out value="${param.param5 }" /></option>
												</form:select>
											</h3>
											<div class="desc">
												<p>
													Size:
													<form:radiobutton path="size" value="M" />
													M
													<form:radiobutton path="size" value="L" />
													L
													<form:radiobutton path="size" value="XL" />
													XL
												</p>
												<p>
													<form:select class="m" path="anh">
														<option><c:out value="${param.param0 }" /></option>
													</form:select>
												</p>
												<p>
													Màu sắc :
													<form:select  multiple="true" size="1"  path="mau">
														<option value="Xanh Dương">Xanh Dương</option>
														<option value="Xanh Lá">Xanh Lá</option>
														<option value="Vàng">Vàng</option>
														<option value="Đỏ">Đỏ</option>
														<option value="Hồng">Hồng</option>
														<option value="Tím">Tím</option>
														<option value="Cam">Cam</option>
														<option value="Đen">Đen</option>
														<option value="Trắng">Trắng</option>
														<option value="Nâu">Nâu</option>
														<option value="Xám">Xám</option>
													</form:select>
												</p>
												<p>
													<form:select class="m" path="id">
														<option><c:out value="${param.param7 }" /></option>
													</form:select>
												</p>
												<p>Số lượng:</p>
												<div id="num-order-wp">
													<a title="" id="minus"><i class="fa fa-minus"></i></a>
													<form:input path="so_luong" name="num-order" value="1"
														id="num-order" />
													<a title="" id="plus"><i class="fa fa-plus"></i></a>
												</div>
												<p>
													<form:select class="m" path="gia">
														<option><c:out value="${param.param6 }" /></option>
													</form:select>
												</p>
											</div>
											<div class="num-product">
												<span class="title">Sản phẩm: </span> <span class="status">Còn
													hàng</span>
											</div>
											<p class="price">
												ĐƠN GIÁ :
												<c:set var="accountBalance" value="${param.param6 }" />
												<fmt:setLocale value="en_US" />
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${accountBalance}" />
												Đ
											</p>

											<div>
												<button class="add-cart">Thêm vào giỏ hàng</button>												
											</div>
										</form:form>
									</div>
								</div>
							</div>
							<div class="section" id="post-product-wp">
								<div class="section-head">
									<h3 class="section-title">Góp ý cho sản phẩm</h3>
								</div>
								<div class="section" id="paging-wp">
									<div class="section-detail">
										<div class="fb-comments"
											data-href="https://www.facebook.com/Minh9001/?modal=admin_todo_tour"
											data-width="960px" data-numposts="5"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="sidebar fl-left">
							<div class="section" id="category-product-wp">
								<div class="section-head">
									<h3 class="section-title">Danh mục sản phẩm</h3>
								</div>
								<div class="secion-detail">
									<ul class="list-item">
										<li><a href="?page=category_product" title="">Theo
												chủ đề</a>
											<ul class="sub-menu">
												<li><a href="?page=category_product" title="">Giáng
														Sinh</a></li>
												<li><a href="?page=category_product" title="">Ngày
														Tết</a></li>
												<li><a href="?page=category_product" title="">Valentine</a></li>
												<li><a href="?page=category_product" title="">Halloween</a>
												</li>
											</ul></li>
										<li><a href="?page=category_product" title="">Thời
												trang nam</a></li>
										<li><a href="?page=category_product" title="">Thời
												trang nữ</a></li>
										<li><a href="?page=category_product" title="">Đồ công
												sở</a></li>
										<li><a href="?page=category_product" title="">Đồ đôi</a></li>
										<li><a href="?page=category_product" title="">Áo
												Khoắc</a></li>
										<li><a href="?page=category_product" title="">Phụ
												kiện</a></li>
									</ul>
								</div>
							</div>
							<div class="section" id="banner-wp">
								<div class="section-detail">
									<iframe
										src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2F%C4%90o%C3%A0n-%C4%90%E1%BB%A9c-Minh-103615924391863%2F&tabs=timeline&width=280&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
										width="280" height="500"
										style="border: none; overflow: hidden"> </iframe>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div id="footer-wp">
		<div id="foot-body">
			<div class="wp-inner clearfix">
				<div class="block" id="info-company">
					<h3 class="title">SHOP</h3>
					<p class="desc">Clothers Shop luôn cung cấp luôn là sản phẩm
						chính hãng có thông tin rõ ràng, chính sách ưu đãi cực lớn cho
						khách hàng có thẻ thành viên.</p>
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
</body>
</html>