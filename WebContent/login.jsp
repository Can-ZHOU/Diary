<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="model.User"%>
<%
	if(request.getAttribute("user")==null) {
		String userName = null, password =null;
		
		Cookie[] cookies = request.getCookies();
		for(int i=0; cookies!=null && i<cookies.length; i++) {
			if(cookies[i].getName().equals("user")) {
				userName = cookies[i].getValue().split("-")[0];
				password = cookies[i].getValue().split("-")[1];
			}
		}
		
		if(userName == null) {
			userName = "";
		}
		if(password == null) {
			password = "";
		}
		
		pageContext.setAttribute("user", new User(userName,password));
	}
%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

    <title>Login Page</title>
    <style>
        body {
            background-color: #E5E7E9;
        }

        .form-signin {
            max-width: 400px;
            max-height:600px;
            margin: 150px auto 20px;
        }

        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

        .error {
            color: red;
        }
    </style>
    <script type="text/javascript">
        function checkForm() {
            var userName=document.getElementById("userName").value;
		    var password=document.getElementById("password").value;
            if(userName==null||userName==""){
                document.getElementById("error").innerHTML="Please input your username!";
                return false;
            }
            if(password==null||password=="") {
                document.getElementById("error").innerHTML="Please input your password";
                return false;
            }
            return true;
        }
    </script>
  </head>
  <body>
    <div class="container">
        <form name="myForm" class="form-signin shadow-lg p-3 mb-5 bg-white rounded" action="login" method="post" onsubmit="return checkForm()">
            <h2 class="text-center">Diary</h2>
            <div class="form-group">
              <label for="userName" class="font-weight-bold">User Name</label>
              <input type="text" id="userName" name="userName" value="${user.userName}" class="form-control" placeholder="Please input your username">
            </div>
            <div class="form-group">
              <label for="password" class="font-weight-bold">Password</label>
              <input type="password" id="password" name="password" value="${user.password}" class="form-control" placeholder="Please input your password">
            </div>
            <div class="form-group form-check">
              <input type="checkbox" class="form-check-input" id="remember" name="remember" value="remember-me" checked>
              <label class="form-check-label font-weight-bold" for="remember">Remember Me</label>
            </div>
            <div id="error" class="error text-center font-weight-bold">${error}</div>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" class="btn btn-primary btn-block font-weight-bold" >Submit</button>
            <button type="reset" class="btn btn-primary btn-block font-weight-bold">Reset</button>
        </form>
    
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/bootstrap/other/jQuery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/other/popper.js"></script>
    <script src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>