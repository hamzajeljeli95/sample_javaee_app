<%@ page import="MainPackage.Person" %>
<%--
  Created by IntelliJ IDEA.
  User: Hamza
  Date: 1/7/2020
  Time: 12:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>People List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
      body{
        margin: auto;
      }</style>
  </head>
  <body>
  <marquee><h3>People List</h3></marquee>
  <hr/>
  <table class="table">
    <thead>
    <tr>
    <th scope="col">ID</th>
    <th scope="col">Name</th>
    <th scope="col">Birth Date</th>
    <th scope="col">Occupation</th>
    </thead>
    </tr>
    <tbody>
    <%
    for(Person P : MainPackage.DAO.PersistanceHandler.GetAllPersons())
    {
      %>
    <tr scope="row">
    <td><%=P.getId()%></td>
    <td><%=P.getName()%></td>
    <td><%=P.getBirthDate()%></td>
    <td><%=P.getOccupation()%></td>
    </tr>
    <%
    }
    %>
    </tbody>
  </table>
  <center><a href="NewPerson.jsp" class="btn btn-primary">+ New</a>   <a href="./Clear" class="btn btn-danger">Clear List</a></center>
  </body>
</html>
