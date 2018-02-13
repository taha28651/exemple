<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="d"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Catalogue Destination</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
	<title>Admin: destination touristiques</title>
</head>
<body>
<body data-spy="scroll" data-target="#navbar" data-offset="0">
    <header id="header" role="banner">
        <div class="container">
            <div id="navbar" class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                 
                	<a class="navbar-brand" href="index.html"></a>
                </div>
                <div class="collapse navbar-collapse">                
	               <ul class="nav navbar-nav navbar-right">
	               	  <li><a href="getClient">Utilisateurs</a></li>
                      <li><a href="">destinations</a></li>
                      <li><a href="">demandes</a></li>
				      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				   </ul>
			    </div>
            </div>
        </div>
    </header><!--/#header-->

    <section id="portfolio">
        <div class="container">
            <div class="box">
                <div class="center gap">
                    <br><br><h1>Liste des utilisateurs</h1>
                </div><!--/.center-->
                <div class="row">
                	<d:table class="table table-sm" name="listClient" export="true" requestURI="/getClient" 
                	decorator="com.app.decorator.clientActionDecorator" pagesize="20">
						<d:column property="id" title="#" />
						<d:column property="user_name" title="UserName" sortable="true" />
						<d:column property="last_name" title="Last Name" />
						<d:column property="password" title="Password" />
						<d:column property="email_adrress" title="Email" />
						<d:column property="deleteClientLink" title="Action" media="html" />
					</d:table>
                </div>
            </div><!--/.box-->
        </div><!--/.container-->
	</section>


    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.isotope.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>