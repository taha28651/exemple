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
    <title>Destination Touristique</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
</head>

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
                    <a class="navbar-brand" href="../index.html"></a>
                </div>
                    <ul >
                                  
                      
                        <li class="active"><a href="#main-slider"><i class="icon-home"></i></a></li>
                        <li><a href="getAllVille">liste des destination </a><li>
                        <li><a href="gestionDest.jsp">gestion des destination</a></li>
                        <li><a href="gestionUsers.jsp">gestion des utilisateur</a></li>
                    </ul>
            </div>
        </div>
    </header><!--/#header-->

    <section id="portfolio">
        <div class="container">
            <div class="box">
                <div class="center gap">
                    <br><br><br><h4>catalogue ville</h4>
                </div><!--/.center-->
                
               <ul class="portfolio-items col-4">
               
               <s:iterator value="listVille">
					
                    <li class="portfolio-item apps">
                        <div class="item-inner">
                            <div class="portfolio-image">
                                <img src="${image}" alt="">
                                <div class="overlay">
                                    <a class="preview btn btn-danger" title="${descreption}" href="${image}"><i class="icon-eye-open"></i></a>             
                                </div>
                            </div>
                            <h4>${libelle} <small style="font-size : 12px;"><a href="detailVille?var=${idv}"> details</a></small></h4>
					
					
					
						<%-- 	<s:url namespace="/" action="findVille" var="lien">
							<s:param name="var">
							</s:param>
							</s:url> --%>		
						
                        </div>
                    </li>
                    
					
				</s:iterator>
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