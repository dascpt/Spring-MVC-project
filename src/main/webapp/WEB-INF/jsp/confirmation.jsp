<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styleSheet" href="${pageContext.request.servletContext.contextPath}/style/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style type="text/css">
.banner {
	text-align: center;
	background-image: url('images/sky.png');
	width: 100%;
	height: 150px;
	background-repeat: no-repeat;
	background-position: center;
	position: relative;
}

.header-title {
	color: white;
	position: relative;
	top: 20%
}

</style>
</head>
<body>

	<div class="header">
		<div class="banner">
			<div class="header-title">
				<h1><i>DASCPT.SITE</i></h1>
				<p>***************************************</p>
			</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-sm navbar-dark bg-primary rounded">
		<a class="navbar-brand" href="#">Home</a>
		<ul class="navbar-nav mr-auto">
			<li class="navbar-nav"><a class="nav-link">Products</a></li>
			<li class="navbar-nav"><a class="nav-link">About Us</a></li>
		</ul>
		<!-- Navbar-nav with FORM -->
		<ul class="navbar-nav ml-auto">
			<form class="form-inline" action="/Controller?action=search">
				<input class="form-control mr-md-2" type="text" placeholder="Search">
				<button class="btn btn-success" type="submit">Search</button>
			</form>
		</ul>
	</nav>
	
	<h2 style="padding-top:1.5%;padding-button:2%;text-align: center;">Welcome ${param.username} </h2>
	<h4 style="text-align: center;"><a style="text-decoration: underline;" href="<%=response.encodeUrl(request.getContextPath() + "/logout")%>">Logout</a></h4>
	
	
	<div class="row">
	<div class="leftcolumn">
		<div class="card">
			<h2>Information of Product 1</h2>
			<h5>Tittle desciption,<%= new java.util.Date() %> </h5>
			<div class="fakeing" style="height:200px;">Image</div>
			<p>Some text...</p>
		</div>
		<div class="card">
			<h2>Information of Product 1</h2>
			<h5>Tittle desciption,<%= new java.util.Date() %> </h5>
			<div class="fakeing" style="height:200px;">Image</div>
			<p>Some text...</p>
		</div>
	</div>
	
	<div class="rightcolumn">
		<div class="card">
			<h2>Shopping cart</h2>
			<div class=fakeing" style="height:100px;">Cart</div>
			<p>Summary information of your cart can be displayed here</p>
		</div>
		<div class="card">
			<h3>Popular Products of banner</h3>
			<div class="fakeing"><p>Image</p></div>
			<div class="fakeing"><p>Image</p></div>
			<div class="fakeing"><p>Image</p></div>
		</div>
	</div>
</div>
<footer class="text-center text-white" style="background-color: #caced1;">
  <!-- Grid container -->
  <div class="container p-4">
    <!-- Section: Images -->
    <section class="">
      <div class="row">
        <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="${pageContext.request.servletContext.contextPath}/images/cualo2.png"
              class="w-100"
            />
            <a href="#!">
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              ></div>
            </a>
          </div>
        </div>
        <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="images/vinh.png"
              class="w-100"
            />
            <a href="#!">
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              ></div>
            </a>
          </div>
        </div>
        <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="images/langsen2.png"
              class="w-100"
            />
            <a href="#!">
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              ></div>
            </a>
          </div>
        </div>
        <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="images/congthanh.png"
              class="w-100"
            />
            <a href="#!">
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              ></div>
            </a>
          </div>
        </div>
        <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="images/ditichPBC2.png"
              class="w-100"
            />
            <a href="#!">
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              ></div>
            </a>
          </div>
        </div>
        <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="images/mobahoangthiloan1.png"
              class="w-100"
            />
            <a href="#!">
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              ></div>
            </a>
          </div>
        </div>
      </div>
    </section>
    <!-- Section: Images -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2022 Copyright:
    <a class="text-white" href="https://dascpt.site/">Dascpt.site</a>
  </div>
  <!-- Copyright -->
</footer>



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" />
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" />
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" />
</body>
</html>