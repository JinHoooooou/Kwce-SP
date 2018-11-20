<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="Fn" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  My name is ${name}. </P>
<p>
<c:set var="name1" value="100" scope="page"/>
<c:set var="name2" value="<%=new int[] {1,2,3,4,5} %>"/>
<c:set var="check" value="true" />

<c:out value="${name1}" default="값이 없습니다."/><br>
<c:out value="${name2[1]}" default="값이 없습니다."/><br>

<c:remove var="name2"/>

<c:if test="${check }">true</c:if><br>
<c:if test="${!check }">false</c:if><br>

<c:choose>
	<c:when test="${check }">
	true<br>
	</c:when>
	<c:otherwise>
	false<br>
	</c:otherwise>
</c:choose>

<c:forEach var="i" begin="0" end="10" step="1" varStatus="check">
	i=${i}, i*i = ${i*i } <c:if test="${check.last }">,last = ${i }</c:if><br>
</c:forEach>

</p>

</body>
</html>
