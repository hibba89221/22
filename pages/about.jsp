<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
		<title>關於我們</title>
		<style>
			@import"../assets/css/header.css";
			@import"../assets/css/ad.css";
			@import"../assets/css/newarr.css";
			@import"../assets/css/coupon.css";
			@import"../assets/css/footer.css";
			@import"../assets/css/signin.css";
			@import"../assets/css/member.css";
			@import"../assets/css/about.css";
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
				<br>
				<br>
				<br>
				<br>
				<br>
				<h1 align="center">關於我們</h1>
				<hr style="border-width:2px;width:450px;">
				<div class="col-xl-5" style="margin-right: auto;margin-left: auto; border-style:solid;border-color:gray;background-image:url(../assets/img/background/background02.jpg)">
					<div style="margin:8px" >
						<img class="column" src="../assets/img/member/member_1.jpg" align="left" width="200" height="225" float="left" >
						<div class="form-group">
							<div>&nbsp;姓名: 劉修宸</div>
							<div>&nbsp;班級: 資管二甲</div>
							<div>&nbsp;興趣: 打籃球，看電影</div><br>
							
							<div>&nbsp;負責內容: 後端程式撰寫</div>
							<br>
							<div>
								&nbsp;專案心得:這學期換我們做後端，才發現後端需要邏輯思考縝密，並且熟悉語法的運用，才能快速的把功能寫出來，如何把想法實際寫成程式，是我這次學到最大的地方。
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="col-xl-5" style="margin-right: auto;margin-left: auto; border-style:solid;border-color:gray;background-image:url(../assets/img/background/background02.jpg)">
					<div style="margin:8px" >
						<img class="column" src="../assets/img/member/member_2.jpg" align="left" width="200" height="225" float="left">
						<div class="form-group">
							<div>&nbsp;姓名:許博凱</div>
							<div>&nbsp;班級:資管二甲 </div>
							<div>&nbsp;興趣: 彈吉他，打籃球</div><br>
							
							<div>&nbsp;負責內容: </div>
							<br>
							<div>
								&nbsp;專案心得: 在做後台的過程遇到了許多邏輯上的問題，所以在思考上也花了需多的心力及時間，也明白自己有許多不足的地方，希望可以繼續學習，下次寫得更好。
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="col-xl-5" style="margin-right: auto;margin-left: auto; border-style:solid;border-color:gray;background-image:url(../assets/img/background/background02.jpg)">
					<div style="margin:8px" >
						<img class="column" src="../assets/img/member/member_3.jpg" align="left" width="200" height="225" float="left">
						<div class="form-group">
							<div>&nbsp;姓名: 曾辰光</div>
							<div>&nbsp;班級: 資管二乙</div>
							<div>&nbsp;興趣:打籃球、看電影</div><br>
							
							<div>&nbsp;負責內容:前端網路程式撰寫</div>
							<br>
							<div>
								&nbsp;專案心得: 很開心這次可以學習如何做前端的網頁，希望未來能繼續研究一波，然後未來能使用的上
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="col-xl-5" style="margin-right: auto;margin-left: auto; border-style:solid;border-color:gray;background-image:url(../assets/img/background/background02.jpg)">
				<div style="margin:8px" >
					<img class="column" src="../assets/img/member/member_4.jpg" align="left" width="200" height="225" float="left">
					<div class="form-group">
						<div>&nbsp;姓名: 陳柏勳</div>
						<div>&nbsp;班級: 資管二乙</div>
						<div>&nbsp;興趣: 做模型</div><br>
						<div>&nbsp;負責內容: 商品頁設計，進度報告</div>
						<br>
						<div>
							&nbsp;專案心得: 經過這次的專題之後使我了解，網頁必須同時兼具美觀跟功能性的難度，之後應再找時間加強自己的能力，也期望以後能做得更好<br>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>

		<br>

			<div class="col-xl-12 col-lg-12 col-md-12">
				<h3 class="wordtitle abouttitle" style="margin-top: 200px;">地理位址</h3>
				<hr style="border-width:2px;width:300px;">
			</div>

				<div class="col-xl-12 col-lg-12 col-md-12">
					<iframe class="center pdl" style="margin-left:42%" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14469.00828948632!2d121.2410215!3d24.957537!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2b86d2650bb8bcff!2z5Lit5Y6f5aSn5a24!5e0!3m2!1szh-TW!2stw!4v1575658336553!5m2!1szh-TW!2stw" width="300" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
				</div>
			
			<div class="col-xl-12 col-lg-12 col-md-12 text-center" style="margin-top:20px;"><br>
				<p class="aboutfont">地址:&nbsp;320桃園市中壢區中北路200號</p>
				<P class="aboutfont">電話:&nbsp;+886-912345678</P>
				<p class="aboutfont">Email:&nbsp;Facile@gmail.com</p>
			</div>	
	</section>
	<footer class="footerbg">
		<div class="footertext">
			Copyright © 2020 by Facile Cloth Selling CORP. <br>
			Tel:&nbsp;+886-912345678 | Email:&nbsp;Facile@gmail.com
		</div>
	</footer>