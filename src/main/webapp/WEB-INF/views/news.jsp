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
               <a class="p-2 text-muted" href="/newshub">Home</a>
               <a class="p-2 " href="/newshub/news">News</a>
               <a class="p-2 text-muted" href="/newshub/newsSources">News Sources</a>
            </nav>
         </div>
         <main role="main" class="inner cover">
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
               <div class="col-md-6 px-0">
                  <h3 class="font-italic">Latest News</h3>
                  <p class="lead my-3">Please select a news source from the below list</p>
               </div>
            </div>
            <div class="animated zoomInRight">
               <div class="input-group search-bar">
                  <select ng-model="selectedname"
                     ng-model-options="{ debounce: 800 }" class="form-control"
                     placeholder="Enter full movie name" ng-change="change()" autofocus>
                     <option selected="selected" value="abc-news-au">ABC NEWS
                        AU
                     </option>
                     <option value="ars-technica">ARS TECHNICA</option>
                     <option value="associated-press">ASSOCIATED PRESS</option>
                     <option value="bbc-news">BBC NEWS</option>
                     <option value="bbc-sport">BBC SPORT</option>
                     <option value="ars-technica">BILD</option>
                     <option value="bloomberg">BLOOMBERG</option>
                     <option value="business-insider">BUSINESS INSIDER</option>
                     <option value="business-insider-uk">BUSINESS INSIDER UK</option>
                     <option value="buzzfeed">BUZZFEED</option>
                     <option value="cnbc">CNBC</option>
                     <option value="cnn">CNN</option>
                     <option value="daily-mail">DAILY MAIL</option>
                     <option value="der-tagesspiegel">DER TAGESSPIEGEL</option>
                     <option value="die-zeit">DIE ZEIT</option>
                     <option value="engadget">ENGADGET</option>
                     <option value="entertainment-weekly">ENTERTAINMENT WEEKLY</option>
                     <option value="espn">ESPN</option>
                     <option value="espn-cric-info">ESPN CRIC INFO</option>
                     <option value="focus">FOCUS</option>
                     <option value="football-italia">football italia</option>
                     <option value="fortune">fortune</option>
                     <option value="four-four-two">FOUR FOUR TWO</option>
                     <option value="fox-sports">FOX SPORTS</option>
                     <option value="google-news">GOOGLE NEWS</option>
                     <option value="gruenderszene">GRUENDERSZENE</option>
                     <option value="hacker-news">HACKER NEWS</option>
                     <option value="handelsblatt">HANDELSBLATT</option>
                     <option value="ign">IGN</option>
                     <option value="independent">INDEPENDENT</option>
                     <option value="mashable">MASHABLE</option>
                     <option value="metro">METRO</option>
                     <option value="mirror">MIRROR</option>
                     <option value="mtv-news">MTV NEWS</option>
                     <option value="mtv-news-uk">MTV NEWS UK</option>
                     <option value="national-geographic">NATIONAL GEOGRAPHIC</option>
                     <option value="new-scientist">NEW SCIENTIST</option>
                     <option value="newsweek">NEWSWEEK</option>
                     <option value="new-york-magazine">NEW YORK MAGAZINE</option>
                     <option value="nfl-news">NFL NEWS</option>
                     <option value="polygon">POLYGON</option>
                     <option value="recode">RECODE</option>
                     <option value="reddit-r-all">REDDIT R ALL</option>
                     <option value="reuters">REUTERS</option>
                     <option value="sky-news">SKY NEWS</option>
                     <option value="sky-sports-news">SKY SPORTS NEWS</option>
                     <option value="spiegel-online">SPIEGEL ONLINE</option>
                     <option value="t3n">T3N</option>
                     <option value="talksport">TALKSPORT</option>
                     <option value="techcrunch">TECHCRUNCH</option>
                     <option value="the-economist">THE ECONOMIST</option>
                     <option value="the-guardian-au">THE GUARDIAN AU</option>
                     <option value="the-guardian-uk">THE GUARDIAN UK</option>
                     <option value="the-hindu">THE HINDU</option>
                     <option value="the-huffington-post">THE HUFFINGTON POST</option>
                     <option value="the-lad-bible">THE LAD BIBLE</option>
                     <option value="the-new-york-times">THE NEW YORK TIMES</option>
                     <option value="the-next-web">THE NEXT WEB</option>
                     <option value="the-sport-bible">THE SPORT BIBLE</option>
                     <option value="the-telegraph">THE TELEGRAPH</option>
                     <option value="the-times-of-india">THE TIMES OF INDIA</option>
                     <option value="the-verge">THE VERGE</option>
                     <option value="the-wall-street-journal">THE WALL STREET
                        JOURNAL
                     </option>
                     <option value="the-washington-post">THE WASHINGTON POST</option>
                     <option value="time">TIME</option>
                     <option value="usa-today">USA TODAY</option>
                     <option value="wired-de">WIRED DE</option>
                     <option value="wirtschafts-woche">WIRTSCHAFTS WOCHE</option>
                  </select>
               </div>
               <h1></h1>
               <div class="row mb-2">
                  <div class="col-md-6" ng-repeat="article in articles">
                     <div class="card flex-md-row mb-4 box-shadow h-md-600">
                        <div class="card-body d-flex flex-column align-items-start">
                           <h3 class="mb-0">
                              <a class="text-dark" href="{{ article.url }}">{{article.title}}</a>
                           </h3>
                           <div class="mb-1 text-muted">{{article.author | limitTo : 30 }}, {{article.publishedAt | limitTo : 10}}</div>
                           <img class="img-fluid rounded img-thumbnail" data-ng-src="{{article.urlToImage}}" href="{{ article.url }}" alt="Card image cap">
                           <p class="card-text mb-auto">{{article.description | limitTo : 300}}</p>
                           <a href="{{ article.url }}">Continue reading</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </main>
      </div>
      <footer class="blog-footer">
         <div class="inner">
            <p>News from <a href="https://newsapi.org/">News API</a>, developed by <a href="https://srikanthchebrolu.me">Srikanth Chebrolu</a>.</p>
         </div>
      </footer>
   </body>
</html>