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

<title>Formularz</title>
</head>
<body>
	<h1>Dodaj/Edytuj przepis</h1>
	<form method="post" action="<c:url value="/form"/>">
		<input type="hidden" name="id" value="${id}" />
		<div class="form-group">
			<div>
				<textarea class="form-control" rows="1" placeholder="Wpisz nazwę"
					id="name" name="name"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div>
				<textarea class="form-control" rows="10"
					placeholder="wpisz produkty" id="products" name="products"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div>
				<textarea class="form-control" rows="10" placeholder="wpisz przepis"
					id="make" name="make"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div>

				<button class="btn btn-success" type="submit">Zapisz</button>

			</div>
		</div>
	</form>
</body>
</html>