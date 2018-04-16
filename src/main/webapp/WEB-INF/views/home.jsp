<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <c:url var="home" value="/" scope="request" />
      <spring:url value="/resources/css/bootstrap.min.css"
         var="bootstrapCss" />
      <link href="${bootstrapCss}" rel="stylesheet" />
      <spring:url value="/resources/css/blog.css" var="blogCss" />
      <link href="${blogCss}" rel="stylesheet" />
      <spring:url value="/resources/css/css.css" var="css" />
      <link href="${css}" rel="stylesheet" />
      <spring:url value="/resources/js/jquery-3.2.1.slim.min.js"
         var="jqueryJs" />
      <script src="${jqueryJs}"></script>
      <spring:url value="/resources/js/angularjs/1.5.9/angular.min.js"
         var="angularJs"></spring:url>
      <script src="${angularJs}"></script>
      <spring:url value="/resources/js/home.js" var="coreJs" />
      <script src="${coreJs}"></script>
      <spring:url value="/resources/js/bootstrap.min.js"
         var="bootstrapJs" />
      <script src="${bootstrapJs}"></script>
      <spring:url value="/resources/js/popper.min.js"
         var="bootstrapJs" />
      <script src="${properjs}"></script>
      <spring:url value="/resources/js/holder.min.js"
         var="holderjs" />
      <script src="${holderjs}"></script>
   <body ng-app="myApp"  ng-controller="NewsController">
      <div class="container">
         <header class="blog-header py-3">
            <div class="text-center">
               <a class="blog-header-logo text-dark" href="/newshub">News Hub</a>
            </div>
         </header>
         <div class="nav-scroller py-1 mb-2">
            <nav class="nav d-flex justify-content-between">
               <a class="p-2" href="/newshub">Home</a>
               <a class="p-2 text-muted" href="/newshub/news">News</a>
               <a class="p-2 text-muted" href="/newshub/newsSources">News Sources</a>
            </nav>
         </div>
         <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <div class="col-md-6 px-0">
               <h3 class="font-italic">Access worldwide news</h3>
               <p class="lead my-3">Get breaking news headlines, and search for articles from over 30,000 news sources and blogs</p>
            </div>
         </div>
      </div>
      <footer class="blog-footer">
         <div class="inner">
            <p>News from <a href="https://newsapi.org/">News API</a>, developed by <a href="https://srikanthchebrolu.me">Srikanth Chebrolu</a>.</p>
         </div>
      </footer>
   </body>
</html>