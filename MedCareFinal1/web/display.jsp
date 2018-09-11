<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/4/2017
  Time: 6:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.prediction.heart.entities.Investigation"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css">
    
</head>
<body>
    
<div class="container">
<div class="well" style="margin-top:10%;">
        Result :<br>
 ${result}
</div>
</div>

<div class="container">
<div class="well" style="margin-top:10%;">
<%    
 Object chol = request.getAttribute("chol1");
 Object h_bp = request.getAttribute("hbp1");
 Object alch = request.getAttribute("alch1");
 Object cigs = request.getAttribute("smoke1");
 Object pulserate = request.getAttribute("pulse_rate1");

 String str ="Some Recommendations:";
 out.print(str);

if(Double.parseDouble(h_bp.toString())>130){
    String str0 = "-You have High Blood Pressure which leads to risk of several diseases so follow the instructions to control High Blood Pressure:";
    String str1 ="-avoid caffeine completely";
    String str2 ="-reduce stress by doing yoga";
    String str3 ="-increase potassium diet and reduce sodium diet";
        out.println("<br/>");
        out.println("<br/>");
        out.print(str0);
        out.println("<br/>");
        out.print(str1);
        out.println("<br/>");
        out.print(str2);
        out.println("<br/>");
        out.print(str3);
    
}
if(Double.parseDouble(alch.toString())>0){
    String str0 =  "You better quit taking alcohol:";
    String str2 = "-Alcohol consumption increases an individual's risk of cardiovascular disease.";
    String str3 = "-At the time of drinking, alcohol can cause a temporary increase in heart rate and blood pressure.";
    String str4 = "-In the long-term, drinking above the guidelines can lead to on-going increased heart rate, high blood pressure, weakened heart muscle and irregular heartbeat."
            + "and consumption of alcohol may also causes Atrial fibrillation";
    String str5 = "-All of which can increase the risk of alcohol-caused heart attack and stroke.";
    out.println("<br/>");
    out.println("<br/>");
    out.print(str0);
    out.println("<br/>");
    out.print(str2);
    out.println("<br/>");
    out.print(str3);
    out.println("<br/>");
    out.print(str4);
    out.println("<br/>");
    out.print(str5);
    
}

if(Double.parseDouble(pulserate.toString())>100){
    String str0 = "You have high pulse rate which leads to reisk of several heart problems so follow the instructions to reduce your pulse rate:";
    String str1 ="-perform relaxation techniques";
    String str2 ="-keep hydrated";
    String str3 ="-avoid excessive use of alcohol";
    String str4 ="-to balance the electrolytes intake the food rich in Calcium, Potassium, Sodium, Magnesium";
        out.println("<br/>");
        out.println("<br/>");
        out.print(str0);
        out.println("<br/>");
        out.print(str1);
        out.println("<br/>");
        out.print(str2);
        out.println("<br/>");
        out.print(str3);
        out.println("<br/>");
        out.print(str4);

}
if(Double.parseDouble(chol.toString())>250){
    String str0 ="-High cholesterol leads to risk of several diseases so follw the instructions to reduce cholesterol:";
    String str1 ="- avoid food with more fat";
    String str2="-select whole grains";
    String str3 ="-fish would be better than other meat";
    String str4 ="-loose extra weight";
    out.println("<br/>");
    out.println("<br/>");
    out.print(str0);
    out.println("<br/>");
    out.print(str1);
    out.println("<br/>");
    out.print(str2);
    out.println("<br/>");
    out.print(str3);
    out.println("<br/>");
    out.print(str4);
}
else{
    out.print("Stay Healthy and fit");
}
%>



</div>

</div>

<form>
<input type="button" value="Print your result" onClick="window.print()">
</form>
</body>
</html>
