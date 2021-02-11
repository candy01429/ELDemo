<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL運算子</title>
    </head>
    <body>
        <!--算數運算子-->
        加法:
        ${1 + 5}
        減法:
        ${1 - 5}
        乘法:
        ${1 * 5}
        除法:
        ${5 / 3}
        ${5 div 3}
        餘數:
        ${5 % 2}
        ${5 mod 2}

        <!--比較運算子-->
        <%
            String s1 = "jim";
            pageContext.setAttribute("s1", s1);

            String s2 = new String("jim");
            pageContext.setAttribute("s2", s2);

            String s3 = "jim3";
            pageContext.setAttribute("s3", s3);
        %>
        
        
    </body>
</html>
