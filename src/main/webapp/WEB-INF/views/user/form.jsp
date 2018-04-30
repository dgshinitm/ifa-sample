<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="baseUrl" value="${pageContext.request.contextPath}" />

<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="container-fluid">
	<h1>User</h1>
	<h2>Add</h2>
	<hr />
	<form id="form-add" action="${baseUrl}/user/write" method="post">
		<div class="form-group">
			<label for="user-id">id</label>
			<input id="user-id" name="id" type="text" class="form-control" value="${user.id}" />
		</div>
		<div class="form-group">
			<label for="user-name">name</label>
			<input id="user-name" name="name" type="text" class="form-control" value="${user.name}" />
		</div>
		<div class="form-group">
			<label for="user-nickname">nickname</label>
			<input id="user-nickname" name="nickname" type="text" class="form-control" value="${user.nickname}" />
		</div>
		<button id="btn-submit" type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script type="text/javascript">
(function($) {
	$(document).ready(function() {
		$("form#form-add").submit(function() {
			if ($("user-id").val() == "") {
				alert ("Input id");
				return false;
			}
			if ($("user-name").val() == "") {
				alert ("Input name");
				return false;
			}
		});
	});
})(jQuery);

</script>
</body>
</html>
