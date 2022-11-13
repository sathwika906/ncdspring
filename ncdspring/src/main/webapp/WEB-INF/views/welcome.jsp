
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 
  <link href="{{ url_for('static', filename='css/style_satwika.css')}}" rel="stylesheet">
 -->
<link href="/css/style.css" rel="stylesheet">
<link href="/css/kl.css" rel="stylesheet">





<title>home page</title>
</head>
<style>
nav {
	position: fixed;
	background: #520565;
	width: 100%;
	padding: 12px 0;
	z-index: 12;
}

nav .menu {
	max-width: 1250px;
	margin: 0;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
}

.menu .logo a {
	text-decoration: none;
	color: rgb(217, 204, 232);
	font-size: 35px;
	font-weight: 600;
}

.menu ul {
	display: inline-flex;
}

.menu ul li {
	list-style: none;
	margin-left: 7px;
}

.menu ul li:first-child {
	margin-left: 0px;
}

.menu ul li a {
	text-decoration: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	padding: 8px 15px;
	border-radius: 5px;
	transition: all 0.3s ease;
}

.menu ul li a:hover {
	background: #fff;
	color: black;
}
</style>




<!-- Required meta tags -->

<body>

	<nav>

		<div class="menu">
			<div class="logo">

				<!--           -->
				<a href="/"><img src="/img/k2.png" alt="logo"
					style="max-width: 300px; max-height: 300px"></img></a>

			</div>
			<ul>
				<li><a href="/"><i class="fa fa-fw fa-home"></i>Home</a></li>
				<li><a href="https://www.karkinos.in/">About</a></li>
				<li><a href='/link'>Link</a></li>
				<li><a href="#"><i class="fa fa-fw fa-envelope"></i>Contact</a></li>
				<li><a href="/feedback">Feedback</a></li>
			</ul>
		</div>
	</nav>

	<div>

		<div class="wrapper">
			<div
				style="background-image: url(https://t4.ftcdn.net/jpg/01/74/93/85/240_F_174938589_PrFF3ZDYS9D7MdtFR12BWNBo41S3ugQA.jpg)"></div>
			<div
				style="background-image: url(https://t4.ftcdn.net/jpg/02/10/42/73/240_F_210427323_DgmvOO5zLAxwpHpFwWFwaGWAgNroFygJ.jpg
    )"></div>
			<div
				style="background-image: url(https://t3.ftcdn.net/jpg/02/25/99/18/240_F_225991855_D2D5M3JGsLjCoTXfGHLWp1RiubPikwMo.jpg)"></div>
			<div
				style="background-image: url(https://t3.ftcdn.net/jpg/00/90/63/34/240_F_90633462_ypWqcqAJFtZ3rbzk86L1GsWz1d8QSIzH.jpg)"></div>
			<div
				style="background-image: url(https://t3.ftcdn.net/jpg/01/33/90/92/240_F_133909221_o23Ocrx2268PoNWpMf7vb4gJmLAN2Tlg.jpg)"></div>
		</div>


		<div class="container fluid" text="center">
			<div class="center">
				<div class="title" style="color: #6c1370;">NCD Risk Assessment
				</div>
				<div class="sub_title" style="color: #6c1370;">Check Your
					Health Status</div>

				<div class="">
					<button onclick="location.href='/signuppage'" type="button"
						class="btn btn-secondary btn-lg" style="background-color: #6c1475">signup</button>
					<button onclick="location.href='/searchpage'" type="button"
						class="btn btn-secondary btn-lg" style="background-color: #6c1475">search</button>
				</div>
			</div>

		</div>



		<script src="static/js/jquery-1.11.1.min.js"></script>
		<script src="static/js/bootstrap.min.js"></script>
</body>
</html>