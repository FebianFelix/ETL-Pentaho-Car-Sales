<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost/bmw store?user=root&password=" 
	catalogUri="/WEB-INF/queries/BMW.xml">

		SELECT NON EMPTY [Measures].[Total Harga] ON COLUMNS,
				NON EMPTY [Sosial Media].[Nama Sosial Media].Members ON ROWS
		FROM [Sales]

</jp:mondrianQuery>

<c:set var="title01" scope="session">BMW</c:set>