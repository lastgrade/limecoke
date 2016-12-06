<!doctype html>
<html class="no-js" lang="en">
  <head>
	<% base_tag %>	
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$Title | $SiteConfig.Title</title>	
	$MetaTags(false)
	$GoogleAnalytics
    <link href="https://fonts.googleapis.com/css?family=Proza+Libre" rel="stylesheet"> 	
	<% require themedCSS('app') %>
	<% require themedCSS('style') %>
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
	
  </head>
  <body>
	<% include Header %>  		
	$Layout
	<% include Footer %>	
    <script src="$ThemeDir/js/app.js"></script>
  </body>
</html>
