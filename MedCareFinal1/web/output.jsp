<%-- 
    Document   : enter
    Created on : Sep 5, 2018, 11:26:11 AM
    Author     : Asmi
--%>
<%@page import="com.prediction.heart.entities.Investigation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<title>Heart Diseases Prediction System </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="MCVTC-Manmohan Cardiothoracic Vascular and Transplant Center" />
<link rel="icon" type="image/png" href="Image/Capture.PNG">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link type="text/css" rel="stylesheet" href="css/nepali.datepicker.v2.2.min.css" />
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<link rel="stylesheet" href="css/custom.css" type="text/css" media="all">
<link href="css/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all" />
<link type="text/css" rel="stylesheet" href="css/cm-overlay.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>

<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<body>
<style>
.bg_light_blue{
background:#9932cc !important;
padding:15px 0;
}
a.rep_log_mcvtc{
padding:5px 10px;
}
a.rep_log_mcvtc:hover{
	background:#dadada;
}
.navbar.navbar-default nav ul.navbar.navbar-right{
float:left !important;
}
.navbar-default .navbar-nav>li>a {
color:#fff !important; 
}
.navbar-nav>li:nth-child(1){
margin-left:0 !important;
}
</style>
	
<div class="col-lg-12 bg_light_blue">
<div class="container">
<div class="col-lg-6">
<a class="rep_log_mcvtc" href=""><i class="fa fa-book" aria-hidden="true"></i>&nbsp;Report Login</a>
</div>
<div class="col-lg-6 text-right">
<a href="#"><i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;Call Us Now: &nbsp;+977-9860350292</a>
</div>
</div>
</div>

<div class="clearfix"></div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						
						<a class="navbar-brand" href="index.jsp">
							<img class="pull-left" style="width:100px;" src="Image/Capture.PNG">
                            <h2 class="pull-left" style="color:#444; margin-top:10px;">Heart Diseases<br> Prediction System</h2>
						</a>
					</div>

				</div>
			</nav>
		</div>
	</div>
	<div class="headerdown">
    
    <div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							
								<ul class='nav navbar-nav navbar-left'>
<li class="" ><a class="page-scroll" href="index.jsp"  title="Home">Home</a></li>
<li class="" ><a class="page-scroll" href="enter.jsp"  title="Services">Login</a></li>
<li class="" ><a class="page-scroll" href="register.jsp"  title="Services">Register</a></li>
<li class="" ><a class="page-scroll" href="doctors.jsp"  title="Services">Doctors and Hospitals</a></li>
<li class="" ><a class="page-scroll" href="answers.jsp"  title="Services">General Knowledge</a></li>


</ul>
								
								
							  
							
						</nav>
					</div>
					
				</div>
			</nav>
		</div>

	</div>
<section class="about_mcvtc">

    
   
    
    
    
<section class="about_mcvtc">
    <div class="row">
        <div class="col-lg-12 bg">
        <div class="container">
<div class="well" style="margin-top:10%;">
    <%
        Object uname = request.getAttribute("uname1");
//        out.print("Hello");
//       out.print(uname);
       out.println("<br/>");
       out.println("<br/>");
       

        %>
        Result : <br>
 ${result}
</div>


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
        </div>

<form>
<input type="button" value="Print your result" onClick="window.print()">
</form>
    
    
    
    
    
</section>




	<!-- footer -->
	<div class="contact" id="contact-us">
	<div class="container">
		<div class="f-bg-w3l">
		<h3>CONTACT US</h3>
				<div class="col-md-4  w3layouts_footer_grid1">
				<div class="form-bg-w3ls">
					<h4 class="subhead-agileits white-w3ls">Get in Touch</h4>
					 <!--<form method="post">-->
						<input type="text" id="name" name="Name" placeholder="Name" required>
						<input type="email" id="email" name="Email" placeholder="Email" required>
						<textarea id="message" name="Message" placeholder="Message" required></textarea>
						<div class="w3_cs">
						<input type="submit" id="send_mail" value="SEND" class="button-w3layouts hvr-rectangle-out">
						</div>
					 <!--</form>-->
				</div>	
				</div>
				<div class="col-md-4  w3layouts_footer_grid">
					<iframe src="https://maps.google.com/maps?q=kathmandu%20bernhardt%20college&t=&z=13&ie=UTF8&iwloc=&output=embed" width="320" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
				<div class="col-md-4  w3layouts_footer_grid">
					<h4>Address</h4>
					    <ul class="con_inner_text">
							<li><span class="fa fa-map-marker" aria-hidden="true"></span>Heart Diseases<label>Prediction System </label><label>Kathmandu BernHardt College</label><label>Bafal, Kathmandu</label></li>
							<li><span class="fa fa-envelope-o" aria-hidden="true"></span> <a href="mailto:sigdelananda@gmail.com">home_doc111@gmail.com

</a></li>
							<li><span class="fa fa-phone" aria-hidden="true"></span> +977-9860350292

</li>
							<li><span class="fa fa-phone" aria-hidden="true"></span> +977-9860350292

</li>
						</ul>

					<ul class="social_agileinfo">
						<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>


				<div class="clearfix"> </div>
					<p class="copyright">© 2018 Anand Sigdel. All Rights Reserved | Designed by Prime.</p>
			</div>
			</div>
	</div>
	<!-- //footer -->
	
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script  src="js/move-top.js"></script>
<script  src="js/easing.js"></script>
<script  src="js/SmoothScroll.min.js"></script>
    <script src="js/nepali.datepicker.v2.2.min.js"></script>
    <!-- for testimonials slider-js-file-->
    <script src="js/owl.carousel.js"></script>
	<!-- //for testimonials slider-js-file-->
		<script>
		$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
 
			autoPlay: 3000, //Set AutoPlay to 3 seconds
			autoPlay:true,
			items : 3,
			itemsDesktop : [640,5],
			itemsDesktopSmall : [414,4]
		});
		
		
		
		$("#owl-demo-team").owlCarousel({
 
			autoPlay: 3000, //Set AutoPlay to 3 seconds
			autoPlay:true,
			items : 4,
			itemsDesktop : [640,5],
			itemsDesktopSmall : [414,4]
		});
		
		}); 
</script>
<!-- for testimonials slider-js-script-->

 <!--script-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
</script>
<!--script-->
<!-- Calendar -->
<script src="js/jquery-ui.js"></script>
<script>
    $(function() {
        //$( "#datepicker,#datepicker1" ).datepicker();
        $('.datepicker').nepaliDatePicker();
    });
</script>
<!-- //Calendar -->
<!-- /gallery -->
<script src="js/jquery.tools.min.js"></script>
<script src="js/jquery.mobile.custom.min.js"></script>
<script src="js/jquery.cm-overlay.js"></script>

<script>
    $(document).ready(function () {
        $('.cm-overlay').cmOverlay();
    });
</script>
    <!-- //gallery -->
<!-- start-smoth-scrolling -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

        });
</script>
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->
<!--//start-smoth-scrolling -->
    <script type="text/javascript">
        $(document).off('click','#send_mail')
        $(document).on('click','#send_mail',function(){
        	var name = $("#name").val();
        	var email = $("#email").val();
        	var message = $("#message").val();
            $.ajax({
                    type: "POST",
                    url: "./sendmail.php",
                    data: {name:name,email:email,message:message},
                    success:function(jsons){
                        var data = jQuery.parseJSON(jsons);
                        if(data.type == 'success')
                        {
                            alert(data.message);
                            $("#name").val('');
                            $("#email").val('');
                            $("#message").val('');
                        }
                        else
                        {
                            alert(data.message);
                        }
                    }
            });
        });
    </script>

</body>

<!-- Mirrored from p.w3layouts.com/demos_new/template_demo/23-01-2018/curative-demo_Free/482441742/web/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 12 Apr 2018 07:20:57 GMT -->
</html>
