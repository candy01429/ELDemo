<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
        <hr>

        <!--比較運算子-->
        <%
            String s1 = "jim";
            pageContext.setAttribute("s1", s1);

            String s2 = new String("jim");
            pageContext.setAttribute("s2", s2);

            String s3 = "jim3";
            pageContext.setAttribute("s3", s3);
        %>
        是否相等:
        1. ${5 == 2}
        2. ${5 eq 2}
        3. s1 == s2 : ${s1 == s2}
        4. s1 eq s2 : ${s1 eq s2}
        5. s1 == s3 : ${s1 == s3}

        是否不相等:
        1. ${5 != 2}
        2. ${5 ne 2}

        是否小於:
        1. ${5 < 2}
        2. ${5 lt 2}

        是否大於:
        1. ${5 > 2}
        2. ${5 gt 2}

        是否小於等於:
        1. ${5 <= 2}
        2. ${5 le 2}

        是否大於等於:
        1. ${5 >= 2}
        2. ${5 ge 2}
        <hr>

        <!--邏輯運算子-->
        <%
            List<String> names = new ArrayList<String>();
            names.add("Jim1");
            names.add("Jim2");
            pageContext.setAttribute("names", names); // default is PAGE_SCOPE

            List<String> jobs = new ArrayList<String>();
            pageContext.setAttribute("jobs", jobs, PageContext.PAGE_SCOPE); // 獲取PAGE_SCOPE屬性,相當於pageContext.getAttribute()

            Map<String, Object> map = new HashMap<>();
            pageContext.setAttribute("map", map, PageContext.REQUEST_SCOPE); // 獲取request屬性,相當於request.getAttribute()

            // array has default values
            int[] ss = new int[10];
            pageContext.setAttribute("ss", ss, PageContext.SESSION_SCOPE); // 獲取session屬性,相當於session.getAttribute()
        %>
        
        且:
        1. ${(5 gt 2) && (5 lt 7)}
        2. ${(5 gt 2) and (5 lt 7)}
        
        或:
        1. ${(5 gt 2) || (5 lt 7)}
        2. ${(5 gt 2) or (5 lt 7)}
        
        否:
        1. ${!(5 lt 2)}
        2. ${not(5 lt 2)}
        
        測試陣列或List是否為空(empty):
        1. List: ${empty names}, ${names[0]}
        2. List: ${empty jobs}
        3. map:  ${empty map}
        4. array: ${empty ss}, ${ss[2]}
    </body>
</html>
