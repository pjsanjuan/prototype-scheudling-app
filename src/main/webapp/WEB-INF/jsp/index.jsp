<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SFU</title>

  <!-- CSS -->
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
  <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/css/form-elements.css">
  <link rel="stylesheet" href="resources/css/style.css">
</head>

<style>

  body {
    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    font-weight: 300;
    color: #888;
    line-height: 30px;
    text-align: center;
  }
</style>

<body>



<!-- Top content -->
<div class="top-content">

  <div class="inner-bg">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-sm-offset-2 text">
          <div class="description">
            <img src="resources/img/logo_made/logo_2.png" class="img-responsive">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 col-sm-offset-3 form-box">
          <div class="form-top">
            <div class="form-top-left">
              <h3>Student Safety Engagement Program</h3>
              <p>Enter your SFU ID and Password</p>
            </div>
            <div class="form-top-right">
              <i class="fa fa-lock"></i>
            </div>
          </div>
          <div class="form-bottom">
            <form:form modelAttribute="login" method="post">
              <div class="form-group">
                <form:input path="username" type="text" placeholder="Username..." cssClass="form-control" />
              </div>
              <div class="form-group">
                <form:password path="password" name="password" placeholder="Password..." cssClass="form-control" />
              </div>
              <form:button type="submit" id="user" name="user" cssClass="btn">Sign in!</form:button>
            </form:form>
          </div>
        </div>
      </div>

    </div>
    <br><br> <P style="font-size:30px;color:white">TEMP Log-in with no Auth</P>
    <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary btn-lg" style="margin-top:3px">Sign In</a>

  </div>

</div>


<!-- Javascript -->
<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.backstretch.min.js"></script>
<script src="resources/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="resources/js/placeholder.js"></script>
<![endif]-->

</body>

</html>