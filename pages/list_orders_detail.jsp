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
    <title>檢視訂單</title>
    <style>
    @import"../assets/css/header.css";
    @import"../assets/css/ad.css";
    @import"../assets/css/newarr.css";
    @import"../assets/css/coupon.css";
    @import"../assets/css/footer.css";
    @import"../assets/css/signin.css";
    @import"../assets/css/member.css";
    @import"../assets/css/about.css";
    @import"../assets/css/list1.css";
    </style>
  </head>
  <body>
    <header>
      <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
          <a class="nav-link" href="logout.jsp"><img src="../assets/img/logo/logo.png" alt="logo"></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="header">
            <ul class="navbar-nav font1">
              <li class="nav-item">
                <a class="nav-link" href="logout.jsp">登出</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!--檢視清單-->
    <%
      String order_search=request.getParameter("order_search");
	  session.setAttribute("order_search",order_search);
      String sql3 = "SELECT * FROM members WHERE memberID='"+order_search+"'";
      ResultSet rs3 = con.createStatement().executeQuery(sql3);
      rs3.next();
    %>
    <div class="container" style="font-family: 微軟正黑體;margin-top: 200px;">
      <h1 class="membertitle" >檢視訂單
        <a href="list.jsp" style="margin-left:20px;"><font style="font-size: 15px;  color:gray;">回上一頁</font></a>
      </h1>
      <hr style="border-width: 3px;border-color: #E0E0E0;">
      <h4>會員&nbsp;<font style="font-weight: bold;"><%=rs3.getString(3)%></font>&nbsp;的訂單紀錄</h4>
      <div class="col-xl-12">
        <div class="row">
          <table class="text-center col-xl-12" border="1" >
            <tr>
              <th class="tdWidth"><h4>訂單編號</h4></th>
              <th class="tdWidth"><h4>訂貨方式</h4></th>
              <th class="tdWidth"><h4>時間</h4></th>
              <th class="tdWidth"><h4>總價(含運費)</h4></th>
              <th class="tdWidth"><h4>詳細訂單</h4></th>
            </tr>
            <%
            sql= "select * from orders";
            ResultSet rs = con.createStatement().executeQuery(sql);
            while(rs.next())
            {
            String order_Id=rs.getString("order_Id");
            int total = 0;
            String sql2 = "select * from order_detail, product, orders where (email = '"+order_search+"') AND (order_detail.Product_Id = product.Product_ID) and (orders.order_Id=order_detail.order_Id) and (orders.order_Id='"+order_Id+"') ";
            ResultSet rs2 = con.createStatement().executeQuery(sql2);
            while(rs2.next())
            {
            
            total += (rs2.getInt("num") * rs2.getInt("price"));
            }
            %>
            <td><%=rs.getString("order_Id")%></td>
            <td><%=rs.getString("pay_way")%></td>
            <td><%=rs.getString("timer")%></td>
            <td>NT<%out.print(total+60);%></td>
            <form action="list_orders_detail_search.jsp" method="post" accept-charset="utf-8">
              <input type="hidden" name="order_Id" value="<%=rs.getString("order_Id")%>">
              <td><input type="submit" value="查詢"></td>
            </form>
          </tr>
          <%}%>
        </table>
        <br>
        <br>
        <br>
      </div>
    </div>
  </div>
  <footer class="footerbg" style="margin-top:200px;">
    <div class="footertext">
      Copyright © 2020 by Facile Cloth Selling CORP. <br>
      Tel:&nbsp;+886-912345678 | Email:&nbsp;Facile@gmail.com
    </div>
  </footer>
</body>
</html>