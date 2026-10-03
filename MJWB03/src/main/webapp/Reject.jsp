<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Dao.Database"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String fileid=request.getParameter("fileid");
String filename=request.getParameter("filename");
String fcontent=request.getParameter("fileContent");
String newdata=request.getParameter("newdata");


String sql="update uploaded_files set Approvement='Rejected' where File_id='"+fileid+"'";
Connection con=Database.getConnection();
PreparedStatement ps=con.prepareStatement(sql);
int i=ps.executeUpdate();
if(i>0){
	response.sendRedirect("editedData.jsp");
}else{
	response.sendRedirect("editedData.jsp");
}

%>


</body>
</html>