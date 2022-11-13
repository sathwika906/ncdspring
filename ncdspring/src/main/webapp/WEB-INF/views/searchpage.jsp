
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>search page</title>
<div class="logo">

		<a href="/"><img src="/img/k2.png" alt="logo"
					style="max-width: 300px; max-height: 300px"></img></a>
</div>
</head>

<body>


	<div>
		<p style="color: red;"></p>

		<form action="/searchdata" method="post">
			<div class="input-group mb-3">
				<select name="dropdownselect" class="input-group-text"
					id="primary_key">
					<option><a class="dropdown-item" value="f" href="">FIRSTNAME</a></option>
					<option><a class="dropdown-item" value="l" href="">LASTNAME</a></option>
					<option><a class="dropdown-item" value="p" href="">PATIENTID</a></option>
				</select> <input name="inp" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default"
					pattern="[A-za-z0-9\s\.]{1,100}"
					title=" character must be digit for patient id and aplhabet for firstname and last name and it must be between 1 to 100 ">
				<button class="btn btn-outline-success" type="submit"
					pattern="[^'\x22]+" title="Invalid input">Search</button>
				<button type="reset" value="reset" class="btn btn-secondary">Clear</button>
			</div>
		</form>
		<div>
			<form action="/all_data" method="post">

				<button type="submit" class="btn btn-primary">all data</button>
			</form>
			<form action="/searchpage" method="post">

				<button type="submit" class="btn btn-secondary">clear</button>

			</form>

		</div>
		<div>
			<table class="table  table-striped">
				<thead>

					<trclass="">
					<th scope="col">Sl no.</th>
					<th scope="col">Firstname</th>
					<th scope="col">Lastname</th>
					<th scope="col">patient id</th>
					<th scope="col">email</th>
					<th scope="col">gender</th>
					<th scope="col">dob</th>
					<th scope="col">adhar</th>
					<th scope="col">phno</th>
					<th scope="col">score</th>
					<th scope="col">result</th>
					</tr>
				</thead>
				<tbody>
 ${inp }
 ${choice }
			<c:forEach items="${records}" var="row">
  						  <tr>
								<td scope="col">${ row.getSlno()}</td>
								<td scope="col">${ row.getFirstname() }</td>
								<td scope="col">${ row.getLastname() }</td>
								<td scope="col">${ row.getPatid() }</td>
								<td scope="col">${ row.getEmail() }</td>
								<td scope="col">${ row.getGender() }</td>
								<td scope="col">${ row.getDob() }</td>   
								<td scope="col">${ row.getAdhar() }</td>
								<td scope="col">${ row.getPhno() }<td> 
								<td scope="col">${ row.getScore() }</td>
								<td scope="col">${ row.getResult() }</td>
							</tr>
  				  </c:forEach>
					${data1}
</body>
</html>

