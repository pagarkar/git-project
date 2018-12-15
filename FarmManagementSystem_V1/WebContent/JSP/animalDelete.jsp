<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.itrix.Dao.AnimalDao,com.itrix.Model.AnimalModel,com.itrix.Service.AnimalService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		AnimalService serviceObj = new AnimalService();
		int status = serviceObj.deleteAnimal(id);
		response.sendRedirect("viewAnimalMast.jsp");
	%>
</body>
</html>