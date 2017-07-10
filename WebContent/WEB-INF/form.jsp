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

<link rel="stylesheet" type="text/css" href="STYLE/style.css" />
<title>Formularz</title>
</head>
<body>
	<h1>Dodaj/Edytuj przepis</h1>
		<div class="form-group">
	<div>
		<textarea class="form-control" rows="1" placeholder="Wpisz nazwę"></textarea>
	</div>
	</div>
	<div class="form-group">
	<div>
		<textarea class="form-control" rows="10" placeholder="wpisz produkty"></textarea>
	</div>
	</div>
	<div class="form-group">
	<div>
		<textarea class="form-control" rows="10" placeholder="wpisz przepis"></textarea>
	</div>
	</div>
	<div class="form-group">
	<div>

		<button class="btn btn-success" type="submit">Zapisz</button>

	</div>
	</div>
</body>
</html>