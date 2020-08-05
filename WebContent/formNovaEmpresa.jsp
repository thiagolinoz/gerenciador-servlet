<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServeltNovaEmpresa"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${linkServeltNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome"/>
		Data abertura: <input type="text" name="data"/>
		<input type="submit" />
	</form>

</body>
</html>