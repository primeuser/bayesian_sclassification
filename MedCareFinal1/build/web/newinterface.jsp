<%-- 
    Document   : newinterface
    Created on : Sep 5, 2018, 12:12:52 PM
    Author     : Asmi
--%>

<%-- 
    Document   : enter
    Created on : Sep 5, 2018, 11:26:11 AM
    Author     : Asmi
--%>

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
background:#e8e8e8 !important;
padding:15px 0;
}
.bg{
    background:#b16b27;
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
<a class="rep_log_mcvtc" href="login.jsp"><i class="fa fa-book" aria-hidden="true"></i>&nbsp;Report Login</a>
</div>
<div class="col-lg-6 text-right">
<a href="#"><i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;Call Us Now: &nbsp;+977-1-4418822</a>
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


</ul>
								
								
							  
							
						</nav>
					</div>
					
				</div>
			</nav>
		</div>

	</div>

<section>
    <div class="col-lg-12 bg">
    <div class="container">
            <div class="row">
                <div class="col-sm-12">
            <form method="POST" name="User Interface" action="${pageContext.request.contextPath}/form">
            <div class="text-center">
                <label ><h2> Patient's Details</h2></label>
               
            
            </div>
            <br>
            <br>
            <div class="col-md-4">
                    <div class="form-group">
                        <label><h2>Patient's Gender</h2></label>
                    <select id="gender_dropdown" class="form-control" name="gender">
                    <option value="1">Male</option>
                    <option value="0">Female</option>
                    </select>
                    </div>
                        </div>
            <br>
            
		<div class="row">
		<div class="col-md-4 col-md-offset-2">
                    <div class="form-group">
                        <h2>Patient's age</h2>
			<input id="age" name="age" class="form-control" placeholder="Age"
			type="text" class=" form-control mcvtc_form_el" />
                    </div>
			</div>
                            </div>
            <br>
           
		
                    <div class="col-md-4">
                    <div class="form-group">
                    <h2>Systolic blood pressure</h2>
                    <input id="h_bp" name="h_bp" class="form-control"
                    placeholder="Systolic BP in mmHg" type="text"onfocus="this.value=''"  required />
                    </div>
                        </div>
                        <br>
      
			<div class="row">
			<div class="col-md-4 col-md-offset-2">
                        <div class="form-group">
			<h2>Chest pain</h2>
			<select id="chest_pain" class="form-control" name="chest_pain">
			<option value="0">No</option>
			<option value="1">Yes</option>	
			</select>
                            </div>
				</div>
				</div>
                     <br>
                    <div class="col-md-4">
                    <div class="form-group">
                    <h2>Diastolic blood pressure</h2>
                    <input id="l_bp" name="l_bp" class="form-control"
                    placeholder="Diastolic BP in mmHg" type="text" onfocus="this.value=''"  required/>
                    </div>
                        </div>
 <br>

			<div class="row">
			<div class="col-md-4 col-md-offset-2">
                    	<div class="form-group">
                        <h2>Rest ECG</h2>
			<select id="ecg_dropdown" class="form-control" name="rest_ecg">
			<option value="0">Normal</option>
			<option value="1">Wave abnormality</option>
			</select>
                        </div>
                            </div>
			</div>

			 <br>
                     <div class="col-md-4">
                    <div class="form-group">
                        <h2> Pulse rate</h2>
			<input id="pulserate" name="pulserate" class="form-control"
			placeholder="Pulse/ heart rate" type="text" onfocus="this.value=''"  required/>
                    </div>
			</div>
                         <br>
                    <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                    <div class="form-group">
                       <h2>Cholesterol</h2>
			<input id="cholesterol" name="chol" class="form-control"
			placeholder="Cholesterol" type="text" onfocus="this.value=''"  required/>
                    </div>
                        </div>
                            </div>
                     <br>
                   
				<div class="col-md-4">
                    <div class="form-group">
                        <h2> consuming cigarette for year </h2>
			<input id="year" name="year" class="form-control"
			placeholder="cigarette for how many years" type="text" onfocus="this.value=''"  required/>
                    </div>
			</div>	
 <br>
                    <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                    <div class="form-group">
                        <h2> Cigarette consume per day</h2>
			<input id="cigs" name="cigs" class="form-control"
			placeholder="Consume Cigarette" type="text"onfocus="this.value=''"  required />
                    </div>
			</div>
                      <br>
                       <br>
                    <div class="col-md-4">
                    <div class="form-group">
                        <h2>Family History of Heart Diseases</h2>
			<select id="ecg_dropdown" class="form-control" name="f_h">
			<option value="0">No</option>
			<option value="1">Yes</option>
			</select>
                    </div>
			</div>
                            <br>
                              <br> <br>
                        <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                    <div class="form-group">
                        <h2> Consume Alcohol</h2>
			<select id="alch" class="form-control" name="alch">
			<option value="0">No</option>
			<option value="1">Yes </option>
			</select>
                    </div>
			</div>
				 <br>
               
                    <div class="row">
		    <div class="col-sm-4 col-sm-offset-4">
                    <button type="submit" name="signin" class="btn my-btn" >
                        Submit Data</button>
			</div>
                        </div>
                             <br>
                        
                </form>
            
        </div>
    </div>
</div>
    
            </div>
    </div>
    </div>
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
