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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="public/css/import/a.css" />
<title>Index</title>
<style>
.m{
display: none;
}
h1{
text-transform:  capitalize;
 letter-spacing: 1px;           /* Khoang cach giua cac chu */
        color: black;
        font-size: 180%;
        font-weight: 700;
        text-align: center;
}
header{
background-color:#00FA9A;
background-size: cover;
    background-position: center;
    background-attachment: fixed;
    height: 100vh;
}
.muasam{
   
   margin-left: 400px;
   margin-top:100px;
}
.good{
 
 position:fixed;
 margin-top:-280px;
 text-align: center;
 margin-left:530px;
 font-size: 120%;
}
.today{
 text-align: center;
}
.back{
position:fixed;

 margin-top:-130px;
  text-align: center;
 margin-left:560px;
}
.back-home{
    font-size: 130%;
    margin-left: 10px;
    
    color: #008000;
    border-top-right-radius: 5px;    /* Lam tròn 2 bên cua bang prodcut*/
    border-top-left-radius: 5px;
    margin-bottom: 15px;
}
.back-cart{
font-size: 130%;
    margin-left: 60px;  
    color: #008000;
    border-top-right-radius: 5px;    /* Lam tròn 2 bên cua bang prodcut*/
    border-top-left-radius: 5px;
    margin-bottom: 15px;
}
.back-bill{
font-size: 130%;
    margin-left: 60px;    
    color:#008000;
    border-top-right-radius: 5px;    /* Lam tròn 2 bên cua bang prodcut*/
    border-top-left-radius: 5px;
    margin-bottom: 15px;
}
.time-zone{
  position:fixed;
  margin-top:-220px;
  text-align: center;
  margin-left:580px;
  font-size:120%;
}

h2{
 position:fixed;
 margin-top:-180px;
 text-align: center;
 margin-left:650px;
 font-size: 150%;
}
</style>
</head>

<body>
<header>
    <img src="admin/muasam.png" class="muasam">
	<h1 >&lt;fmt:timeZone&gt; Demo</h1>
	<c:set var="today" value="<%=new java.util.Date()%>" />
	<c:set var="timeZone" value="GMT-8" />
	<div class="time-zone">
	Thời gian hiện tại là:
	<strong class="today"><fmt:formatDate value="${today}" type="both" /></strong>	
	</div>
	<h2 class="message">${message}</h2>
	
	<form:form action="a.htm" modelAttribute="cart"  class="back">						
			<div>
				<a href="index.htm" class="back-home">Trang chủ</a>	
				<a> </a>
				<a href="cart.htm" class="back-cart">Giỏ hàng</a>	
				<a>  </a>
				<a href="bill.htm" class="back-bill">Hóa đơn</a>		
			</div>
	</form:form>	
	<div class="good">
	<%     java.util.Calendar currTime = new java.util.GregorianCalendar();
	String timeOfDay = ""; 
 
    if (currTime.get(currTime.HOUR_OF_DAY) < 12) {
    	timeOfDay = "Morning!";     }
    else if (currTime.get(currTime.HOUR_OF_DAY) < 18) {
    	timeOfDay = "Afternoon!";     }     
    else {         
    	timeOfDay = "Evening!";     } %> Good <%=timeOfDay%>
	</div>	
	</header>							
</body>
</html>