
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<link rel="styleSheet" href="style/logincss.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<h1 style="text-align:center">Welcome login page</h1>
	<div style="color: red;text-align:center">${error}</div>
<div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" action="/PRJ321x_02_VN_Assignment_4_2/checklogin" method="post">

            <div class="text-center">
              <img src="https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295397__340.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                width="200px" alt="profile">
            </div>

            <div class="mb-3">
              <input type="text" class="form-control" id="Username" aria-describedby="emailHelp"
                name="username" value="${param.username}">
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" name="password" value="${param.password}">
            </div>
            <div class="text-center"><input type="submit" class="btn btn-color px-5 mb-5 w-100" name="submit"></div>
            <div id="emailHelp" class="form-text text-center mb-5 text-dark">Not
              Registered? <a href="#" class="text-dark fw-bold"> Create an Account</a>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>
  
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" />
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" />
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" />
		
</body>
</html>