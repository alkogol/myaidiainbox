<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
    <title>Javastudy.ru MVC_HTML5_Angular</title>
    <!-- Bootstrap Core CSS -->
    <spring:url value="resources/css/bootstrap.css" var="bootstrap"/>
    <!-- Custom CSS -->
    <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
    <!-- Custom Fonts -->
    <spring:url value="/resources/css/font-awesome.min.css" var="fontawesome"/>
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${startertemplate}" rel="stylesheet" />
    <link href="${fontawesome}" rel="stylesheet" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active">
                    <a href="about.html">About</a>
                </li>
                <li>
                    <a href="services.html">Services</a>
                </li>
                <li>
                    <a href="contact.html">Contact</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="portfolio-1-col.html">1 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-2-col.html">2 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-3-col.html">3 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-4-col.html">4 Column Portfolio</a>
                        </li>
                        <li>
                            <a href="portfolio-item.html">Single Portfolio Item</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="blog-home-1.html">Blog Home 1</a>
                        </li>
                        <li>
                            <a href="blog-home-2.html">Blog Home 2</a>
                        </li>
                        <li>
                            <a href="blog-post.html">Blog Post</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="full-width.html">Full Width Page</a>
                        </li>
                        <li>
                            <a href="sidebar.html">Sidebar Page</a>
                        </li>
                        <li>
                            <a href="faq.html">FAQ</a>
                        </li>
                        <li>
                            <a href="404.html">404</a>
                        </li>
                        <li>
                            <a href="pricing.html">Pricing Table</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">About
                <small>Subheading</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.html">Home</a>
                </li>
                <li class="active">About</li>
            </ol>
        </div>
    </div>
    <!-- /.row -->

    <!-- Intro Content -->
    <div class="row">
        <div class="col-md-6">
            <img class="img-responsive" src="http://placehold.it/750x450" alt="">
        </div>
        <div class="col-md-6">
            <h2>About Modern Business</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, magni, aperiam vitae illum voluptatum aut sequi impedit non velit ab ea pariatur sint quidem corporis eveniet. Odit, temporibus reprehenderit dolorum!</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et, consequuntur, modi mollitia corporis ipsa voluptate corrupti eum ratione ex ea praesentium quibusdam? Aut, in eum facere corrupti necessitatibus perspiciatis quis?</p>
        </div>
    </div>
    <!-- /.row -->

    <!-- Team Members -->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Our Team</h2>
        </div>
        <c:forEach var="user" items="${users}" >
        <div class="col-md-4 text-center">
            <div class="thumbnail">
                <img class="img-responsive" src="${user.imageLink}" alt="">
                <div class="caption">
                    <h3>${user.name}<br>
                        <small>Job Title</small>
                    </h3>
                    <p>${user.description}</p>
                    <ul class="list-inline">
                        <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
    <!-- /.row -->

    <!-- Our Customers -->
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Our Customers</h2>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6">
            <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6">
            <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6">
            <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6">
            <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6">
            <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6">
            <img class="img-responsive customer-img" src="http://placehold.it/500x300" alt="">
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Your Website 2014</p>
            </div>
        </div>
    </footer>

</div>

<c:forEach var="user" items="${users}">
  <ul class="list-inline">
                        <li>${user.name}</li>
                        <li>${user.description}</li>

   </ul>
</c:forEach>


<
<!-- /.container -->

<!-- jQuery -->
<script src="/resources/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>

</body>

</html>
