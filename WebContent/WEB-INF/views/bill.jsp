<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script src="public/js/jquery-3.4.1.js" type="text/javascript"></script>
<script src="public/js/test.js" type="text/javascript"></script>
<title>Bill</title>
</head>
<style>
.m{
display: none;
}
header{
background-image:url('admin/shoppinggirl.png');

    background-position: center;
    background-attachment: fixed;
    height: 100vh;
}
</style>
<body>
    <header>
	<h1>&lt;fmt:timeZone&gt; Demo</h1>
	<c:set var="today" value="<%=new java.util.Date()%>" />
	<c:set var="timeZone" value="GMT-8" />
	Date in the current time zone:
	<strong><fmt:formatDate value="${today}" type="both" /></strong>
	<br /> Date in the GMT-8 time zone (nested in &lt;fmt:timeZone&gt;
	tag):
	<fmt:timeZone value="${timeZone}">
		<strong> <fmt:formatDate value="${today}"
				timeZone="${timeZone}" type="both" />
		</strong>
	</fmt:timeZone>
	<br>	
	<c:forEach var="u" items="${Bill }">
			<tr class="table-hover">
				<td>${u.ten }</td>
				<td>${u.so_luong }</td>				
				<td>${u.mau }</td>
				<td>${u.gia }</td>
				<td>${u.size }</td>
			</tr>
		</c:forEach>	
		</header>							
</body>
</html>