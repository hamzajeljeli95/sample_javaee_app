<%--
  Created by IntelliJ IDEA.
  User: Hamza
  Date: 1/7/2020
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        body{
            margin: auto;
        }
        td{
            margin: 4px;
        }
    </style>
</head>
<body>
<marquee><h3>New Person</h3></marquee>
<hr/>
<div class="container">
<form action="./AddNew" method="post">
    <div class="form-group">
        <label for="NameWrite">Name</label>
        <input type="text" name="name" class="form-control" id="NameWrite" aria-describedby="NameWrite" placeholder="Enter Name" required>
        <small id="NameHelp" class="form-text text-muted">A name, Please ?</small>
    </div>
    <div class="form-group">
        <label for="bdWrite">Birth Date</label>
        <input type="date" name="bdate" class="form-control" id="bdWrite" aria-describedby="bdWrite" required>
        <small id="bdHelp" class="form-text text-muted">So, When did you came to this world ?</small>
    </div>
    <div class="form-group">
        <label for="occWrite">Occupation</label>
        <input type="text" name="occupation" class="form-control" id="occWrite" aria-describedby="occWrite" placeholder="Enter Occupation" required>
        <small id="occHelp" class="form-text text-muted">What do you do for living ?</small>
    </div>
    <table>
        <tr>
            <td><button type="submit" class="btn btn-primary">Submit</button></td>
            <td><a href="./index.jsp" class="btn btn-danger">Return</a></td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
