<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>
<style type="text/css">
   .container
   {
      background-color: #E1E8ED; 
      padding: 20px;
      border-radius: 10px;
      font-size: 20px;
      margin-left: 400px;
      margin-right: 400px;
      border:1px solid blue;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      
   }
   td
   {
      padding-top:10px;
      padding-left: 10px;
   }
   .sub
   {
     width:120px;
     height:30px;
     color:white;
     border: none;
     border-radius: 5px;
     background-color: green;
   }
   .can
   {
     width:120px;
     height:30px;
     color:white;
     border: none;
     border-radius: 5px;
     background-color: maroon;
     margin-left: 20px;
      
   }
   h1
   {
      color:red;
      text-align: center;
   }
   #idType,#department
   {
     width:170px;
     height: 20px;
     text-align: center;
   }
   select:hover,input:hover
   {
      border: 1px solid red;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      border-radius: 3px;
   }
   center
   {
      padding-top: 20px;
   }
</style>
</head>
<body>
 
   <h1>Employee Registration Form</h1>
 <hr>
 <form action="register" method="post" class="container">
 <table align="center">
   <tr>
     <td>Name</td>
     <td><input type="text" name="name"></td>
     <td>Select Id Type</td>
     <td>
       <select name="idType" id="idType">
          <option value="" selected="selected">--None--</option>
          <option value="aadhar">AADHAR</option>
          <option value="voter">VOTER</option>
          <option value="pan">PAN</option>
      </select>
    </td>
   </tr>
   <tr>
     <td>Address</td>
     <td><input type="text" name="address"></td>
     <td>Salary</td>
     <td><input type="text" name="salary"></td>
   </tr>
   <tr>
     <td>Email</td>
     <td><input type="text" name="email"></td>
     <td>Departments</td>
     <td> 
       <select id="department" name="department">
        <option value="" selected="selected">--None--</option>
        <option value="Finance">Finance</option>
        <option value="HR">HR</option>
        <option value="Digital Marketing">Digital Marketing</option>
        <option value="Accounting">Accounting</option>
      </select>
     </td>
   </tr>
 </table>
  <center>
        <input type="submit" value="Register" class="sub">
        <input type="reset" value="Reset" class="can">
   </center>
 </form>
 <h3 style="text-align: center;"><a href="/SBMVC5_DataBinding_View_To_Controller/employeeManagementSystem/getAllEmployees">List View</a></h3>
</body>
</html>