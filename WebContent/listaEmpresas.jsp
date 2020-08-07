<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, br.com.linoz.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/mostraEmpresa" var="mostraEmpresa"/>
<c:url value="/removeEmpresa" var="removeEmpresa"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${ not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>

	<ul>
		<c:forEach items="${empresas}" var="empresa"> 
			<li>
				${empresa.id} - ${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
				<a href="${mostraEmpresa}?id=${empresa.id}">editar</a>
				<a href="${removeEmpresa}?id=${empresa.id}">remove</a>
			</li>
		</c:forEach>
	</ul>
	<p><a href="formNovaEmpresa.jsp">Criar empresa</a></p>
</body>
</html>