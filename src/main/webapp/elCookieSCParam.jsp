<%-- 
    Document   : elCookieSCParam
    Created on : 2021/2/11, 上午 11:48:31
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        cookie:
        1. ${cookie}
        2. ${cookie["User.Cookie"].value}
        <hr>
        ServletContext Param:
        1. ${initParam}
        2. ${initParam.ServletContextParam}
    </body>
</html>
