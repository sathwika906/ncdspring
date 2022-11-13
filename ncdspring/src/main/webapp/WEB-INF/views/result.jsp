<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>result page</title>
<div class="logo">
<link href="/css/style.css" rel="stylesheet">
<link href="/css/kl.css" rel="stylesheet">

	<a href="/"><img src="/img/k2.png" alt="logo"
					style="max-width: 300px; max-height: 300px"></img></a>
</div>
</head>

<style>
.mydiv {
	border: 5px outset;
	background-color: #abcf9b;
	text-align: center;
}
<style>
.body {
background: #520565; 
}
</style>
</style>
<body>
		<div class="wrapper">
			<div
				style="background-image: url(https://static.vecteezy.com/system/resources/thumbnails/000/664/438/small/Technologyab23.jpg)"></div>
<p style="background-image: url('https://static.vecteezy.com/system/resources/thumbnails/000/664/438/small/Technologyab23.jpg');">
<div style="text-align:center ">
<h1 style="color:red" >

KARKINOS RISK ASSESSMENT
</h1>
</div>
</div>
<div class="container fluid center">
<div style="text-align:center">
	<h2>Final Results</h2>

	<h4>
patient id :${pat.getPatid()}
	</h4>

	<h4>result :${pat.getResult()}</h4>

	<h4>score :${pat.getScore()}</h4>
	
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
		crossorigin="anonymous">
	<br>
	<br>
	<form action="/back" method='post'>
		<button onclick="location.href='/'" type="button"
			class="btn btn-danger">HOME</button>
	</form>
</p>
</div>
</div>
</body>
</html>