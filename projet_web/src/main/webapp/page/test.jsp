<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Xeon | OnePage Responsive Theme</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/ico/favicon.ico">

    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

			<div class="row">
				<div class="col-sm-12">
						<div class="panel ">
				
			<div class="panel-body">
				<div class="row">
		
					<div class="col-md-3">
						<font size= "3" face="arial"><b>Lieu : </b></font><font size= "3" face="arial">aaaa</font> <br>
					
						<font size= "3" face="arial"><b>Auteur : </b></font><font size= "3" face="arial">aaa</font> <br>
						<font size= "3" face="arial"><b>Date Debut : </b></font><font size= "3" face="arial">aaaa</font> <br>
					


					</div>
					<div class="col-xs-5 col-sm-5 col-md-5 ">
			
               			<s:iterator value="ville">
						
								<img style="width:400px; height:400px " class="img-rounded "  alt="Responsive image"  src="${image}" >
					</s:iterator>
					</div>
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
		
</body>
</html>