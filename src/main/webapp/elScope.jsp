<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL Page</title>
    </head>
    <body>
        <%
            List<String> names = new ArrayList<String>();
            names.add("Jim1");
            names.add("Jim2");
            //	pageContext.setAttribute("names", names, PageContext.PAGE_SCOPE);
            pageContext.setAttribute("names", names); //default is PAGE_SCOPE
            pageContext.setAttribute("str", "Hi,Jim", PageContext.REQUEST_SCOPE);
        %>

        <h2>pageContext:</h2>
        <p>1. \${pageContext.request.method} => ${pageContext.request.method}</p>
        <p>2. \${pageContext.request.contextPath} => ${pageContext.request.contextPath}</p>
        <p>3. \${pageContext.out.bufferSize} => ${pageContext.out.bufferSize} </p>

        <h2>pageScope:</h2>
        <p>1. \${pageScope.names[0]} => ${pageScope.names[0]}</p>
        <p>2. \${names[1]} => ${names[1]}</p>

        <h2>requestScope:</h2>
        <p>1. \${requestScope.emp2} => ${requestScope.emp2}</p>

        <h2>sessionScope:</h2>
        <p>1. \${sessionScope.emp1.address.location} => ${sessionScope.emp1.address.location}</p>
        <p>2. \${sessionScope["emp1"].address["location"]} => ${sessionScope["emp1"].address["location"]}</p>

    </body>
</html>
