<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
		<title>登入</title>
		<style>
			@import"../assets/css/header.css";
			@import"../assets/css/ad.css";
			@import"../assets/css/newarr.css";
			@import"../assets/css/coupon.css";
			@import"../assets/css/footer.css";
			@import"../assets/css/signin.css";
		</style>
	</head>
	<body>
		<header>
			<div>
				<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
					<a class="navbar-brand" href="index.jsp"><img src="../assets/img/logo/logo.png" alt="logo"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end" id="header">
						<ul class="navbar-nav font1">
							<li class="nav-item">
								<a class="nav-link" href="about.jsp">關於我們</a>
							</li>
							
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#products" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">產品</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="shop_list.jsp?classify=tshirt">短袖</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=lshirt">長袖</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=shorts">短褲</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=trousers">長褲</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=jackets">外套</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=others">配件</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#membership" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">會員中心
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="member.jsp">資料查詢</a>
									<a class="dropdown-item" href="record.jsp">消費紀錄</a>
								</div>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="cart.jsp">購物車</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="contactus.jsp">聯絡我們</a>
							</li>
							<% if(session.getAttribute("memberID")!=null){%>
							<li class="nav-item">
								<a class="nav-link" href="logout.jsp">登出</a>
							</li>
						<%}else{%>
							<li class="nav-item">
								<a class="nav-link" href="signin.jsp">登入</a>
							</li>
						<%}%>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<section>
			<div class="container margintop">
				<p class="title1">會員登入</p>
				<hr style="border-width:2px;width:450px;">
				<div class="col-xl-5" style="margin-right: auto;margin-left: auto;">
					<form method="POST" action="check.jsp">
						<div class="form-group">
							<label class="font2">信箱 Email</label>
							<input type="email" class="form-control" id="mail" required placeholder="Email" name="memberID">
						</div>
						<div class="form-group">
							<label class="font2">密碼 Password</label>
							<input type="password" class="form-control" id="myInput" required placeholder="Password" name="memberPWD">
						</div>
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck1">
							<label class="form-check-label" for="exampleCheck1">Remember me</label>
						</div>
						<button type="submit" class="btn btn-primary buttonbg font1" id="button" style="margin-left: auto;margin-right: auto;display: block;">登入</button><br>
						<p style="text-align: center; margin-top:10px;">Don't have an account?&nbsp;&nbsp;&nbsp;<a href="signup.jsp">Sign Up</a></p>
					</form>
					
				</div>
			</div>
		</section>
		<footer class="footerbg">
			<div class="footertext">
				Copyright © 2020 by Facile Cloth Selling CORP. <br>
				Tel:&nbsp;+886-912345678 | Email:&nbsp;Facile@gmail.com
			</div>
		</footer>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<script>
		$(document).ready(function(){
		$("#button").click(function(){
		if($("#mail").val()==""){
		alert("你尚未填寫信箱");
		eval("document.form1['mail'].focus()");
		}else if($("#myInput").val()==""){
		alert("你尚未填寫密碼");
		eval("document.form1['myInput'].focus()");
		}else{
		document.form1.submit();
		}
		})
		})
		</script>
	</body>
</html>