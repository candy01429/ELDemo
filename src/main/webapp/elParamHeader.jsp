<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--資料輸入表單頁面-->
        <form action="elParamHeaderResult.jsp">
            <table>
                <tr>
                    <td>輸入姓名:</td>
                    <td><input type='text' name='name' /></td>
                </tr>
                <tr>
                    <td>選擇程式語言:</td>
                    <td><select name='languages' size='6' multiple>
                            <option value='Ada'>Ada</option>
                            <option value='C'>C</option>
                            <option value='C++'>C++</option>
                            <option value='Cocbol'>Cocbol</option>
                            <option value='Objective-C'>Objective-C</option>
                            <option value='Java'>Java</option>
                        </select>
                    </td>                   
                </tr>
            </table>
            <p>
                <input type='submit' value='Finish Survey' />
            </p>
        </form>    
    </body>
</html>
