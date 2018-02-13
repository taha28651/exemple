<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://displaytag.sf.net" prefix="d"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
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
</head><!--/head-->

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
                 
                <a class="navbar-brand" href="#"></a>
                </div>
                <div class="collapse navbar-collapse">                
                    
               <ul class="nav navbar-nav navbar-right">
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
                    <br><br><h3>Destination Touristique</h3>
                     <p><b>Destination Touristique </b> est un systéme qui analyse les sentiments en se basant sur les commentaires des clients pour évaluer automatquement la qualité des services d'une destination touristique </p>
                </div><!--/.center-->
                
               <ul class="portfolio-items col-4">
               
               <li class="portfolio-item apps">
                        <div class="item-inner">
                            <div class="portfolio-image">
                                <img src="../images/rabat.jpg" alt="" width="370" height="250">
                                <div class="overlay">
                                    <a class="preview btn btn-danger" title="" href="../images/rabat.jpg"><i class="icon-eye-open"></i></a>             
                                </div>
                            </div>
                            <h5>Rabat</h5>
                        </div>
                </li>
                
                <li class="portfolio-item apps">
                        <div class="item-inner">
                            <div class="portfolio-image">
                                <img src="../images/casa.jpg" alt="" width="370" height="250">
                                <div class="overlay">
                                    <a class="preview btn btn-danger" title="" href="../images/casa.jpg"><i class="icon-eye-open"></i></a>             
                                </div>
                            </div>
                            <h5>Casablanca</h5>
                        </div>
                </li>
                
                
                <li class="portfolio-item apps">
                        <div class="item-inner">
                            <div class="portfolio-image">
                                <img src="../images/fes.jpg" alt="" width="370" height="250">
                                <div class="overlay">
                                    <a class="preview btn btn-danger" title="" href="../images/fes.jpg"><i class="icon-eye-open"></i></a>             
                                </div>
                            </div>
                            <h5>Fés</h5>
                        </div>
                </li>
                
                <li class="portfolio-item apps">
                        <div class="item-inner">
                            <div class="portfolio-image">
                                <img src="../images/tetouan.jpg" alt="" width="370" height="250">
                                <div class="overlay">
                                    <a class="preview btn btn-danger" title="" href="../images/tetouan.jpg"><i class="icon-eye-open"></i></a>             
                                </div>
                            </div>
                            <h5>Tétouan</h5>
                        </div>
                </li>
              </ul>   
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