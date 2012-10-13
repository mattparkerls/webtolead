<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>


<!--  Salesforce.com webtolead -------------------------------------------------->
	<META HTTP-EQUIV="Content-type" CONTENT="text/html; charset=UTF-8">
<!--  Salesforce.com webtolead -------------------------------------------------->

    <!--  <meta charset="utf-8"> -->
    <title>Matt Parker Web-to-Lead App</title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!--
      IMPORTANT:
      This is Heroku specific styling. Remove to customize.
    -->
    <link href="http://heroku.github.com/template-app-bootstrap/heroku.css" rel="stylesheet">
    <!-- /// -->

</head>

<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a href="/" class="brand">Back</a>
            <a href="https://github.com/mattparkerls/webtolead" class="brand" id="heroku"><strong>github repo</strong></a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <div class="page-header">
                <h1>Contact</h1>
            </div>
 
<!--  Salesforce.com webtolead -------------------------------------------------->           
            <form action="https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8" method="POST" class="form-vertical">

			<input type=hidden name="oid" value="00DE0000000ZbkG">
			<input type=hidden name="retURL" value="http://startupsandcrm.com/heroku-app/">
<!--  Salesforce.com webtolead -------------------------------------------------->


			<label for="first_name">First Name</label><input  id="first_name" maxlength="40" name="first_name" size="20" type="text" /><br>

			<label for="last_name">Last Name</label><input  id="last_name" maxlength="80" name="last_name" size="20" type="text" /><br>

			<label for="email">Email</label><input  id="email" maxlength="80" name="email" size="20" type="text" /><br>

			<label for="company">Company</label><input  id="company" maxlength="40" name="company" size="20" type="text" /><br>

                <input type="submit" value="Submit" class="btn"/>
            </form>


            <c:if  test="${!empty peopleList}">
                <h3>People</h3>
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${peopleList}" var="person">
                        <tr>
                            <td>${person.lastName}, ${person.firstName}</td>
                            <td><form action="delete/${person.id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
</div>

</body>
</html>
