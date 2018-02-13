<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script src="../js/jquery.js"></script>
<style type="text/css">

body{
background-image: url("../images/bg.jpg");
background-position:40% 30%;


}
</style>
</head>
<body>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="login" class="active">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="signup">Sign Up</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<s:form action="connecter" method="post" role="form" cssStyle="display: block;" validate="true">
									<div class="form-group">
									<s:textfield name="clientt.user_name" cssClass="form-control" placeholder="User Name"  />
								
									</div>
									<div class="form-group">
									<s:password name="clientt.password" cssStyle="width:500px; margin-top:20px;" cssClass="form-control" placeholder="Password" />
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<s:submit cssStyle="margin-top:20px;" value="Login" cssClass="form-control btn btn-primary" />
												
											</div>
										</div>
									</div>
								
								</s:form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>