<%-- 
    Document   : results
    Created on : Mar 3, 2017, 8:03:58 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <%
      String totalHoursWorked = request.getParameter("Hoursworked");
      String hourlyRate = request.getParameter("payRate");
      String hoursOvertime = request.getParameter("payRate");
      String overtimeHourlyRate = request.getParameter("payRate");
      String grossPay = request.getParameter("payRate");
      String preTaxDeduct = request.getParameter("preTaxDeduct");
      String preTaxPay = request.getParameter("payRate");
      String taxAmount = request.getParameter("payRate");
      String postTaxPay = request.getParameter("payRate");
      String postTaxDeduct = request.getParameter("postTaxDeduct");
      String netPay = request.getParameter("payRate");
        %>
        
    <body>
        <h1>Salary Information</h1>
        <table border="1">
            <tr>
                <td>Total Hours Worked:</td>
                <td><%= totalHoursWorked %></td>
            </tr>
            
            <tr>
                <td>Hourly Rate:</td>
                <td><%= hourlyRate %></td>
            </tr>
            
            <tr>
                <td>#Hours Overtime:</td>
                <td><%= hoursOvertime %></td>
            </tr>
            
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%= overtimeHourlyRate %></td>
            </tr>
            
            <tr>
                <td>Gross Pay:</td>
                <td><%= grossPay %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Deduct: </td>
                <td><%= preTaxDeduct %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Pay:</td>
                <td><%= preTaxPay %></td>
            </tr>
            
            <tr>
                <td>Tax Amount:</td>
                <td><%= taxAmount %></td>
            </tr>
            
            <tr>
                <td>Post-tax Pay:</td>
                <td><%= postTaxPay %></td>
            </tr>
            
            <tr>
                <td>Post-tax Deduct:</td>
                <td><%= postTaxDeduct %></td>
            </tr>
            
            <tr>
                <td>Net Pay: </td>
                <td><%= netPay %></td>
            </tr>
        </table>
    </body>
</html>
