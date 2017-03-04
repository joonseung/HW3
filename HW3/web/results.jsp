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
      double totalHoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
      double hourlyRate = Double.parseDouble(request.getParameter("payRate"));
      double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
      double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
      
      double otHours = totalHoursWorked -40;
      double otPayRate = hourlyRate*1.5;
      double grossPay;
      double preTaxPay;
      double taxAmount;
      double postTaxPay;
      double netTaxPay;
      
      /* 
      if(totalHoursWorked>40)
      {double regularHours = 40;
          double otHours = totalHoursWorked -40;
          double otPayRate = hourlyRate*1.5;
          double otPay = otHours * otPayRate;
          double regularPay = regularHours * hourlyRate;
          double grossPay = regularPay + otPay;
      }
      else
      {
          double grossPay = totalHoursWorked * hourlyRate;
      }
     */
      
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
                <td>
                    <%
                        int[] Hours;
                        if (totalHoursWorked > 40)
                        { 
                            out.print(otHours);
                        }
                        else 
                            out.print("0");
                    
                        %>
                </td>
            </tr>
            
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%
                        if (totalHoursWorked>40)
                        {
                            out.print(otPayRate);
                        }
                        else
                            out.print("0");
                        
                        %></td>
            </tr>
            
            <tr>
                <td>Gross Pay:</td>
                <td><%
                      
                        if (totalHoursWorked>40)
                        {
                            grossPay = (40*hourlyRate)+(otHours*otPayRate);
                            out.print(grossPay);
                        }
                        else
                            grossPay = totalHoursWorked*hourlyRate;
                            out.print(grossPay); //regular grosspay under 40 hr
                        %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Deduct: </td>
                <td><%= preTaxDeduct %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Pay:</td>
                <td><% if (grossPay>0)
                        {
                            preTaxPay = grossPay-preTaxDeduct;
                            out.print(preTaxPay);
                        } %></td>
            </tr>
            
            <tr>
                <td>Tax Amount:</td>
                <td><%
                        if (grossPay < 500) {
                        taxAmount=(grossPay-preTaxDeduct)*0.18;
                            out.print(taxAmount);
                       
                        }
                        else 
                            taxAmount=(grossPay-preTaxDeduct)*0.22;
                            out.print(taxAmount);
                        %></td>
            </tr>
            
            <tr>
                <td>Post-tax Pay:</td>
                <td><% if (taxAmount>0)
                        {
                            postTaxPay = (grossPay-preTaxDeduct)-taxAmount;
                            out.print(postTaxPay);
                        } %></td>
            </tr>
            
            <tr>
                <td>Post-tax Deduct:</td>
                <td><%= postTaxDeduct %></td>
            </tr>
            
            <tr>
                <td>Net Pay: </td>
                <td><% if (postTaxDeduct>0)
                        {
                            netTaxPay = ((grossPay-preTaxDeduct)-taxAmount)-postTaxDeduct; // postTaxPay - postTaxDeduct
                            out.print(netTaxPay);
                        } %></td>
            </tr>
        </table>
    </body>
</html>
