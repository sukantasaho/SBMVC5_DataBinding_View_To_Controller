<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    table {
        border-collapse: collapse;
        width: 60%;
    }
    th, td {
        border: 1px solid black;
        padding: 5px;
        text-align: center;
        
    }
    td
    {
       color:#7B0099;
    }
    th {
        background-color: #0F7DC2;
        color:white;
    }
    .a1
    {
       text-decoration: none;
       color:red;
    }
</style>
<title>Response</title>
</head>
<body>
<h2 style="color:red; text-align: center;">Employee Records</h2>
<hr>
  <c:choose>
       <c:when test="${!empty resList}">
    <table border="1" align="center">
      <tr><th>Record Id</th><th>Name</th><th>Id Type</th><th>Address</th><th>Salary</th><th>Email</th><th>Department</th><th>Delete</th></tr>
        <c:forEach var="emp1"  items="${resList}">
            <tr>
              <td><b>${emp1.id}</b></td><td><b>${emp1.name}</b></td><td><b>${emp1.idType}</b></td><td><b>${emp1.address}</b></td>
              <td><b>${emp1.salary}</b></td><td><b>${emp1.email}</b></td><td><b>${emp1.department}</b></td><td><a href="${emp1.deleteURL}" class="a1"><b>Delete</b></a></td>
            </tr>
        </c:forEach>
    </table>
  </c:when>
  </c:choose>
 <h3 style="text-align: center;"><a href="/SBMVC5_DataBinding_View_To_Controller/employeeManagementSystem/getForm">Home</a></h3>
</body>
</html>