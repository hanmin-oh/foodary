<%@page import="com.foodary.service.UserFoodService"%>
<%@page import="com.foodary.vo.UserFoodList"%>
<%@page import="com.foodary.vo.FoodList"%>
<%@page import="com.foodary.service.FoodService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.foodary.vo.DietList"%>
<%@page import="com.foodary.service.DietService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식목록</title>
<!-- bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./js/foodWrite.js" defer="defer"></script> 
<style>
	.dietContent_title {
		float: left;
		width: 100%;
		height: 100px;
		line-height: 100px;
		text-align: center;
		background-color: #dedede;
		font-size: 35px;
	}

	table {
		margin: 0 auto;
	}" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	
	td, th {
		height: 50px;
		border: 1px solid black;
	}


</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	/* String[] foodNames;
	String[] kcals;
	String[] carbs;
	String[] proteins;
	String[] fats;
	
	if (session.getAttribute("foodNames") != null) {
	    // 세션으로부터 데이터 가져오기
	    foodNames = (String[]) session.getAttribute("foodNames");
	    kcals = (String[]) session.getAttribute("kcals");
	    carbs = (String[]) session.getAttribute("carbs");
	    proteins = (String[]) session.getAttribute("proteins");
	    fats = (String[]) session.getAttribute("fats");
	    
	    request.setAttribute("foodNames", foodNames);
		request.setAttribute("kcals", kcals);
		request.setAttribute("carbs", carbs);
		request.setAttribute("proteins", proteins);
		request.setAttribute("fats", fats);
	} */
	
%>

<jsp:useBean id="uvo" class="com.foodary.vo.UserFoodVO">
	<jsp:setProperty property="*" name="uvo"/>
</jsp:useBean>
<%
	out.println(uvo);
	out.println(uvo.getUserFoodName());
	UserFoodService.getInstance().insertFood(uvo);
	UserFoodList userFoodList = UserFoodService.getInstance().userSelectList(uvo);
	out.println(uvo);
	request.setAttribute("userFoodList", userFoodList);
	pageContext.forward("foodWrite.jsp");
%>
</body>
</html>
