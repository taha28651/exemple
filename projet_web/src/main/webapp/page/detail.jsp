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
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">

		
	

</head><!--/head-->

<body data-spy="scroll" data-target="#navbar" data-offset="0">

    
    <section id="pricing">
        <div class="container">
            <div class="box">
              		<div class="row">
				<div class="col-sm-12">
						<div class="panel ">
				
			<div class="panel-body">
				<div class="row">
		
					<div class="col-md-2">
						<font size= "3" face="arial"><b>Lieu : </b></font><font size= "3" face="arial">nom_ville</font> <br>
					
						<font size= "3" face="arial"><b>Auteur : </b></font><font size= "3" face="arial">auteur</font> <br>
						<font size= "3" face="arial"><b>Date : </b></font><font size= "3" face="arial">00-00-0000</font> <br>
					


					</div>
					               			<s:iterator value="ville">
					
					<div class="col-xs-5 col-sm-5 col-md-5 ">
			
						
								<img style="width:400px; height:400px " class="img-rounded "  alt="Responsive image"  src="${image}" >
					</div>
						<div class="col-xs-5 col-sm-5 col-md-5 ">
						<br><br>
							  <h4>${descreption}</h4>
						
					</div>
										</s:iterator>
					
					</div>
					
				</div>
				<div>	
					<p style="font-size : 15pt">
						<br> <br>
					</p>
				</div>
			<div class="panel-footer">
				<table>			
					<tr>			
						<td>
							<font color= "blue" size="3"><a> J'aime </a></font>
						</td>		
						<td class="col-sm-10">
							<font color= "blue" size="3"><a>Vu</a></font>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
		 
          
        			<div class="panel panel-success">
	<div class="panel-heading ">
		
	<font size= "4" face="arial">Galerie</font>
	
	</div>
	<div class="panel-body">		
		<div class = "row">
		<div class = "col-sm-12">
		    <s:iterator value="listgalerie">
		
			<div class="col-sm-2">
			<img src="${lien}" width="100%"/>
			</div>
			</s:iterator>		
		</div>
		</div>

	</div>
</div>

		<div class="panel panel-warning">
	<div class="panel-heading ">
		
	<font size= "4" face="arial">Commantaire</font>
	
	</div>
	<div class="panel-body">		
		<div class = "row">
		<div class = "col-sm-12">
		  		<div class="container">
		  		 <s:iterator value="listcommentaire">
		  		
			  <ul class="list-group">
			  
			    <li class="list-group-item">${contenu} <span class="badge">${polarite} </span></li>
			  </ul>
			  			 </s:iterator>
			  
			<s:form action="addCommentaire" method="post">
			<div class="form-group">
			  <label for="comment">Comment:</label>
			  <s:textarea class="form-control" rows="3" name="commentaire.contenu" width="100%" cols="140"> </s:textarea>
			  
			</div>	
					 <s:submit cssStyle="margin-top:10px; width=10px;" value="Commenter" cssClass="form-control btn btn-primary" />
					
	  		</s:form>
			</div>
		</div>
		</div>

	</div>
	
</div>
  </div>
</div>
</section>

 
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.isotope.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>