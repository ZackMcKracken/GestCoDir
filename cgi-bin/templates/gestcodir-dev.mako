# -*- coding: utf-8 -*-
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Gestion des Comité de direction de la Ville de Seraing">
    <meta name="Author" content="LECLERCQ Fabrice">
    <title>GestCoDir 6</title>
	
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
	<!-- Optional theme -->
	<link rel="../css/bootstrap-theme.min.css">
	<!-- Latest compiled and minified JavaScript -->
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <!-- Custom styles for this template -->
	<link href="../css/header.css" rel="stylesheet">
	<link href="../css/navbar.css" rel="stylesheet">
	<!-- Pour Ie9- -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
     
<link rel="stylesheet" href="assets/css/tg.css" type="text/css"/>
     
<!-- Javascript -->
<script type='text/javascript' src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.7.1/modernizr.min.js"></script>
<script type='text/javascript' src="assets/js/css3-mediaqueries.js"></script>  
 
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script type='text/javascript' src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <script type='text/javascript' src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
<![endif]-->
	
  </head>
  <body style="background-color:#E0F8E0;">
% if logon:
<!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">
    <div class="container">
      <form class="form-signin" role="form">
	  <form method="POST" action="/cgi-bin/gestcodir-dev.py">
		<fieldset id="login" style="width:330px">
			<legend><img src="../images/logo.jpg" 
			alt="Responsive image" class="img-rounded" style="width:160px;height:70px;"></legend>
		<input type="hidden" name="page" value="historique">		
		<input type="hidden" name="logg" value="logg">
        <input type="text" name="nom" id="nom" class="form-control" placeholder="login" value="" required autofocus>
        <input type="password" name="password" class="form-control" placeholder="pass" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> se souvenir de moi
        </label>
        <button class="btn btn-lg btn-success btn-block" type="submit">Ok</button>
      </form>
	  </fieldset>
	  </form>
	</div> <!-- /container -->
% else:

	<link href="../css/date.css" rel="stylesheet">

% endif
</body>
</html>