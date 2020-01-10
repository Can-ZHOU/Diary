<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/diary.css">

    <title>Main Page</title>
  </head>
  <body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="#"><i class="fas fa-laptop-code fa-lg"></i> My Diary</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="#"><i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#"><i class="fas fa-feather"></i> Write Diary</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#"><i class="fas fa-book"></i> Diary Management</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="#"><i class="fas fa-user"></i> User</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i> Search</button>
            </form>
          </div>
        </nav>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col col-lg-9">
                <jsp:include page="${mainPage}"></jsp:include>
            </div>
            <div class="col-12 col-lg-3">
                <div class="data_list">
                    <div class="data_list_title">
                        <i class="fas fa-user"></i>
                        &nbsp;User Profile
                    </div>
                </div>
                <div class="data_list">
                    <div class="data_list_title">
                        <i class="fas fa-tags"></i>
                        &nbsp;Diary Type
                    </div>
                </div>
                <div class="data_list">
                    <div class="data_list_title">
                        <i class="fas fa-calendar-alt"></i>
                        &nbsp;Diary Date
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/bootstrap/other/jQuery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/other/popper.js"></script>
    <script src="${pageContext.request.contextPath}/Bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>