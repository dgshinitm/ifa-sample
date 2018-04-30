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
	<h2>View</h2>
	<hr />
	<form id="form-view" action="${baseUrl}/user/form" method="get">
		<div class="form-group">
			<label for="user-id">id</label>
			<input id="user-id" name="id" type="text" class="form-control" readonly="readonly" value="${user.id}" />
		</div>
		<div class="form-group">
			<label for="user-name">name</label>
			<input id="user-name" name="name" type="text" class="form-control" readonly="readonly" value="${user.name}" />
		</div>
		<div class="form-group">
			<label for="user-nickname">nickname</label>
			<input id="user-nickname" name="nickname" type="text" class="form-control" readonly="readonly" value="${user.nickname}" />
		</div>
		<button id="btn-edit" type="submit" class="btn btn-primary">Edit</button>
	</form>
	<form id="form-list" action="${baseUrl}/user/list" method="get">
		<button id="btn-list" type="submit" class="btn btn-secondary">List</button>
	</form>
	<form id="form-remove" action="${baseUrl}/user/remove" method="post">
		<input id="user-id" name="id" type="hidden" value="${user.id}" />
		<button id="btn-remove" type="submit" class="btn btn-danger">Remove</button>
	</form>
</div>
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script type="text/javascript">
(function($) {
	$(document).ready(function() {
		$("form#form-list").submit(function() {
			// Do nothing...
		});
		$("form#form-remove").submit(function() {
			if(confirm("Delete this data?")) {
			} else {
				return false;
			}
		});
	});
})(jQuery);

</script>
</body>
</html>
