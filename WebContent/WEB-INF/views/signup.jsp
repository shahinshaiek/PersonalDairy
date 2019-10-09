<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
   <head>
      <title>sign UP</title>
      <style type="text/css">
      <%@include file="/resources/css/signup.css" %>
      </style>
   </head>

   <body>
      <h2>User Information</h2>
      <form:form method = "POST" action = "${pageContext.request.contextPath}/success" modelAttribute="signUp">
         <table>
            <tr>
               <td><form:label class="flable" path = "name">User Name</form:label></td>
               <td><form:input class="ffield" path = "name" /></td>
            </tr>
            <tr>
               <td><form:label class="flable" path = "email">Email Address</form:label></td>
               <td><form:input class="ffield" path = "email" /></td>
            </tr>
            <tr>
               <td><form:label class="flable" path = "password">Password</form:label></td>
               <td><form:input class="ffield" path = "password" type="password" /></td>
            </tr>
            <tr>
               <td><form:label class="flable" path = "confirmPassword">Confirm Password</form:label></td>
               <td><form:input class="ffield" path = "confirmPassword" type="password" /></td>
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "sign up"/>
               </td>
            </tr>
         </table>  
      </form:form>
   </body>
   
</html>