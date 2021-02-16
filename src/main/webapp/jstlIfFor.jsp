<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Show "index, count" of varStatus:</h1>

        <!--迭代預先定義次數-->
        <h2>
            <c:forEach begin="0" end="10" step="2" varStatus="status">
                ${status.index},&nbsp;&nbsp;${status.count}<br/>
            </c:forEach>
        </h2>
    </body>
</html>
