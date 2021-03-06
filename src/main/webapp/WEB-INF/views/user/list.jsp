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
	<h2>List</h2>
	<hr />
	<table style="width: 90%;">
		<colgroup>
			<col style="width: 20%;"/>
			<col style="width: 80%;"/>
		</colgroup>
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty users}">
					<tr>
						<td colspan="2" class="no-result">No result.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${users}" var="item" varStatus="status">
						<tr>
							<th><a href="${baseUrl}/user/view?id=${item.id}">${item.id}</a></th>
							<td><a href="${baseUrl}/user/view?id=${item.id}">${item.name}</a></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<hr />
	<div class="layer-button-right">
		<button id="btn-add" type="button" class="btn btn-primary">Add</button>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script type="text/javascript">
(function($) {
	$(document).ready(function() {
		$("#btn-add").on("click", function () {
			location.href = "${baseUrl}/user/form";
		});
	});
})(jQuery);
</script>
</body>
</html>
