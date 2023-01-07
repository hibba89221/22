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
		<title>資料查詢</title>
		<style>
			@import"../assets/css/header.css";
			@import"../assets/css/ad.css";
			@import"../assets/css/newarr.css";
			@import"../assets/css/coupon.css";
			@import"../assets/css/footer.css";
			@import"../assets/css/signin.css";
			@import"../assets/css/member.css";
		</style>
	</head>
	<body>
		<% if(session.getAttribute("memberID")!=null){%>
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
								<a class="nav-link dropdown-toggle" href="#products" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">產品
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="shop_list.jsp?classify=tshirt">短袖</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=lshirt">長袖</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=shorts">短褲</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=trousers">長褲</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=jackets">外套</a>
									<a class="dropdown-item" href="shop_list.jsp?classify=others">配件</a>
								</div>
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
							<li class="nav-item">
								<a class="nav-link" href="logout.jsp">登出</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<% }
		else{%>
		<script>alert('請先登入會員唷~!'); self.location=document.referrer;</script>
		<%}%>
		<section>
			<div class="col-xl-12">
				<div class="row margintop">
					
					<div class="col-xl-3">
						<div class="list-group" >
							<a class="list-group-item list-group-item-action active barfont font1" href="member.jsp">資料查詢</a>
							<a class="list-group-item list-group-item-action barfont font1" href="record.jsp">消費紀錄</a>
						</div>
					</div>
					<div class="col-xl-9">
					<%
						if(session.getAttribute("memberID") != null )
						{
						sql = "SELECT memberID, memberPWD, memberName, Tel, address FROM members WHERE memberID='" +session.getAttribute("memberID")+"';";
						ResultSet paperrs1 =con.createStatement().executeQuery(sql);
						String memberID="", memberPWD="", memberName="", Tel="", address="";
						//讀出id, pwd當成使用者要更改時的內定值
						while(paperrs1.next())
						{
						memberID=paperrs1.getString("memberID");
						memberPWD=paperrs1.getString("memberPWD");
						memberName=paperrs1.getString("memberName");
						Tel=paperrs1.getString("Tel");
						address=paperrs1.getString("address");
						}
					%>
						<h1 class="membertitle">會員資料</h1>
						<hr style="border-width: 3px;border-color: #E0E0E0;">
						<form method="POST" action="update.jsp">
							<div class="form-group">
								<label for="exampleInputEmail1" class="font1">姓名 Name</label>
								<input type="text" class="form-control" id="name" aria-describedby="emailHelp" 
								name="memberName" value="<%=memberName%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="font1">電話 Phone</label>
								<input type="text" class="form-control" id="phone" aria-describedby="emailHelp" 
								name="Tel" value="<%=Tel%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="font1">地址 Address</label>
								<input type="text" class="form-control" id="address" aria-describedby="emailHelp" 
								name="address" value="<%=address%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="font1">信箱 Email</label>
								<input type="email" class="form-control" id="mail" name="memberID" value="<%=memberID%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="font1">密碼 Password</label>
								<input type="password" class="form-control" name="memberPWD" value="<%=memberPWD%>" 
								id="myInput">
							</div>
							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input" onclick="myFunction()"><span class="font1">顯示密碼</span><br>
							</div>
							<button type="submit" class="btn btn-primary memberbtn" id="button">儲存</button><br><br>
						</form>
						<%
						}
						%>
					</div>
				</div>
			</div>
			<!-- Optional JavaScript -->
			<!-- jQuery first, then Popper.js, then Bootstrap JS -->
			<script>
			function myFunction() {
			var x = document.getElementById("myInput");
			if (x.type === "password") {
			x.type = "text";
			} else {
			x.type = "password";
			}
			}
			</script>
			<script>
			$(document).ready(function(){
			$("#button").click(function(){
			if($("#name").val()==""){
			alert("你尚未填寫姓名");
			eval("document.form1['name'].focus()");
			}else if($("#phone").val()==""){
			alert("你尚未填寫電話");
			eval("document.form1['phone'].focus()");
			}else if($("#address").val()==""){
			alert("你尚未填寫地址");
			eval("document.form1['address'].focus()");
			}else if($("#mail").val()==""){
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
		</section>
		<footer class="footerbg">
			<div class="footertext">
				Copyright © 2020 by Facile Cloth Selling CORP. <br>
				Tel:&nbsp;+886-912345678 | Email:&nbsp;Facile@gmail.com
			</div>
		</footer>
	</body>
</html>