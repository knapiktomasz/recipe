<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<title>Przepis</title>
</head>
<body>
	<div class="container">
		<h1>Przepis</h1>
		<form method="get" action="<c:url value="/"/>">
			
			<div class="form-group">
				<div>
					<textarea class="form-control" rows="1" readonly="readonly">${recipe.name}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div>
					<textarea class="form-control" rows="10" readonly="readonly">${recipe.products}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div>
					<textarea class="form-control" rows="10" readonly="readonly">${recipe.make}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div>
					<button class="btn btn-success" type="submit">Strona
						główna</button>

				</div>
			</div>
		</form>
	</div>
</body>
</html>