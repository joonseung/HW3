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
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
        <style>
            table {
                    border-collapse: collapse;
                    width: 66%;
                    }

            td {
                    font-weight: bold;
                    padding: 7px;
                }
            tr:nth-child(odd){background-color: #f2f2f2}
            tr:nth-child(even){background-color: white}
        </style>
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
        <br>
        <table align="center" class="this" border="1" >
            <tr>
                <td>Total Hours Worked:</td>
                <td class="numbers"><%= totalHoursWorked %></td>
            </tr>
            
            <tr>
                <td>Hourly Rate:</td>
                <td class="numbers"><%= hourlyRate %></td>
            </tr>
            
            <tr>
                <td>#Hours Overtime:</td>
                <td class="numbers">
                    <%
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
                <td class="numbers"><%
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
                <td class="numbers"><%
                      
                        if (totalHoursWorked>40)
                        {
                            grossPay = (40*hourlyRate)+(otHours*otPayRate);
                            out.print(grossPay);
                        }
                        else
                        {    grossPay = totalHoursWorked*hourlyRate;
                            out.print(grossPay);
                        }  //regular grosspay under 40 hr
                        %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Deduct: </td>
                <td class="numbers"><%= preTaxDeduct %></td>
            </tr>
            
            <tr>
                <td>Pre-tax Pay:</td>
                <td class="numbers"><% if (grossPay>0)
                        {
                            preTaxPay = grossPay-preTaxDeduct;
                            out.print(preTaxPay);
                        } %></td>
            </tr>
            
            <tr>
                <td>Tax Amount:</td>
                <td class="numbers"><%
                        if (grossPay < 500) {
                        taxAmount=(grossPay-preTaxDeduct)*0.18;
                            out.print(taxAmount);
                       
                        }
                        else 
                        {    taxAmount=(grossPay-preTaxDeduct)*0.22;
                            out.print(taxAmount);
                        }
                        %></td>
            </tr>
            
            <tr>
                <td>Post-tax Pay:</td>
                <td class="numbers"><% if (taxAmount>0)
                        {
                            postTaxPay = (grossPay-preTaxDeduct)-taxAmount;
                            out.print(postTaxPay);
                        } %></td>
            </tr>
            
            <tr>
                <td>Post-tax Deduct:</td>
                <td class="numbers"><%= postTaxDeduct %></td>
            </tr>
            
            <tr>
                <td>Net Pay: </td>
                <td class="numbers"><% if (postTaxDeduct>0)
                        {
                            netTaxPay = ((grossPay-preTaxDeduct)-taxAmount)-postTaxDeduct; // postTaxPay - postTaxDeduct
                            out.print(netTaxPay);
                        } %></td>
            </tr>
        </table>
            
            <h6> (Unit: US Dollar) </h6>
            <hr>
            
            <h5>  ※ Note:   Actual tax calculation is much more complicated.  It is based on number of dependents, income bracket, etc.  Additionally there are state and local taxes that may apply.
    </body>
</html>
