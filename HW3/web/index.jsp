<%-- 
    Document   : index
    Created on : Mar 3, 2017, 7:30:48 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Simple Calculator </title>
    </head>
    <body>
        <h1>Simple Calculator</h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorked" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="payRate" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTaxDeduct" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTaxDeduct" value="" size="50"</td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
