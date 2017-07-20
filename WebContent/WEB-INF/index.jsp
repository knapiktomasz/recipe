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
<title>Recipe</title>

</head>
<body>
	<h1>Strona główna</h1>
	<div class="form-group">
		<label class="col-sm-2 control-label">Dodaj przepis:  
		</label>
		<div class="col-sm-10">
			<a class="btn btn-default" href="<c:url value= "/form"/>">Dodaj
				przepis</a>
		</div>
	</div>
	<div class="form-group">
		<form class="form-group" action="<c:url value= "/view"/>">
			<label for="id" class="col-sm-2 control-label">Numer
				przepisu: </label>
			<div class="col-sm-10">
				<input id="id" type="text" class="form-control" name="id"
					placeholder="Wpisz numer przepisu" /> <input type="submit"
					class="btn btn-default" value="Wyszukaj" />
			</div>
		</form>
	</div>



</body>
</html>