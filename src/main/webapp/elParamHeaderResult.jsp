<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--將資料拋至elParamHeaderResult.jsp,並用EL呈現-->
        header: <!--只能取單一物件-->
        1. ${header["cookie"]} 
        <hr>
        headerValues:
        1. ${headerValues["cookie"]} <!--取得型態為陣列-->
        2. ${headerValues["cookie"][0]} <!--指定陣列第一個成員,取出Cookie-->
        3. ${headerValues["cookie"][1]} <!--無此成員,不顯示-->
        <hr>
        param: <!--只能取單一物件-->
        1. ${param} 
        2. ${param.name}
        3. ${param.languages}
        <hr>
        paramValues:
        1. ${paramValues} 
        2. ${paramValues.name} <!--取得型態為陣列-->
        3. ${paramValues.name[0]}
        4. ${paramValues.languages} <!--取得型態為陣列-->
        5. ${paramValues.languages[0]} <!--取得陣列第一個成員-->
        6. ${paramValues.languages["1"]} <!--取得陣列第二個成員-->
    </body>
</html>
