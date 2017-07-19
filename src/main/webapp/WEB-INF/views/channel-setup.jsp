<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="html" lang="en-US">
 <head>
<style>
#u993{
display:none;
}
#u836-4{
color:#A0A0A0;
}
</style>
  <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "channel-setup.css"], "outOfDate":[]};
</script>
  
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>Channel Setup</title>
  <!-- CSS -->
  <style>
  <%@include file="css/site_global.css"%>
   <%@include file="css/master_pyd-agent.css"%>
  <%@include file="css/channel-setup.css"%>
  </style>
  <!-- Other scripts -->
  <script type="text/javascript">
   document.documentElement.className += ' js';
</script>
   </head>
 <body>

  <div class="clearfix" id="page"><!-- group -->
   <div class="clearfix grpelem" id="u91"><!-- group -->
    <div class="clip_frame grpelem" id="u99"><!-- image -->
     <img class="block" id="u99_img" src="images/logo.png" alt="" width="106" height="39"/>
    </div>
   </div>
   <div class="clearfix grpelem" id="u92"><!-- group -->
    <div class="clearfix grpelem" id="pu105"><!-- column -->
     <div class="colelem" id="u105"><!-- simple frame --></div>
     <div class="clearfix colelem" id="u127-4"><!-- content -->
      <p>Jon Stamos</p>
     </div>
    </div>
    <div class="clearfix grpelem" id="pu123"><!-- column -->
     <div class="clip_frame colelem" id="u123"><!-- image -->
      <img class="block" id="u123_img" src="images/logout.png" alt="" width="35" height="35"/>
     </div>
     <div class="clearfix colelem" id="u129-4"><!-- content -->
      <p>Logout</p>
     </div>
    </div>
   </div>
   <div class="clearfix grpelem" id="u401"><!-- group -->
    <div class="clearfix grpelem" id="u408"><!-- group -->
     <div class="clearfix grpelem" id="pu405-4"><!-- column -->
      <div class="clearfix colelem" id="u405-4"><!-- content -->
       <p>Last Accessed :</p>
      </div>
      <div class="clearfix colelem" id="u406-4"><!-- content -->
       <p>Login IP&nbsp; :</p>
      </div>
     </div>
     <div class="clearfix grpelem" id="u403-4"><!-- content -->
      <p>Time :</p>
     </div>
     <div class="clearfix grpelem" id="u402-4"><!-- content -->
      <p>09:14</p>
     </div>
    </div>
    <div class="clearfix grpelem" id="u407-4"><!-- content -->
     <p>20 May 2015</p>
    </div>
    <div class="clearfix grpelem" id="u404-4"><!-- content -->
     <p>187.192.11.224</p>
    </div>
   </div>
   <div class="grpelem" id="u770"><!-- custom html -->
    <style>
#nav {
    float: left;
    width: 285px;
}
#nav li a {
    display: block;
    padding: 10px 15px;
    background: #64676B;
    text-decoration: none;
    color: #000;
}
#nav li ul li a:hover, #nav li ul li a.active {
    background: #55C0DA;
    color: #fff;
}
#nav li ul li ul li a:hover, #nav li ul li ul li a.active {
  background: #2D3E50;
    color: #fff;
}
#nav li ul {
    display: none; 
}
#nav li ul li a {
    padding: 10px 25px;
    background: #2D3E50;
}

</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(document).ready(function() {

  $(".1").next().slideToggle();
  $(this).addClass('active');
  $('#nav li ul li:nth-child(2) a').addClass('active');
  $('#nav li ul li:nth-child(2) ul li:nth-child(1) a').removeClass('active');
  $('#nav li ul li:nth-child(2) ul li:nth-child(2) a').removeClass('active');
  $('#nav li ul li:nth-child(2) ul li:nth-child(3) a').removeClass('active');
  $('#nav > li > a').click(function() {
    if ($(this).attr('class') != 'active') {
      $('#nav li ul').slideUp();
      $(this).next().slideToggle();
      $('#nav li a').removeClass('active');
      $(this).addClass('active');
      $('#nav li ul li:first-child a').addClass('active');
    } else {
      $(this).next().slideToggle();
      $(this).removeClass('active');
    }
  });
  $('#nav > li > ul > li> a').click(function() {
    if ($(this).attr('class') != 'active') {
      $('#nav li ul li ul').slideUp();

      $(this).next().slideToggle();
      $('#nav li ul li ul li a').removeClass('active');
      $('#nav li ul li a').removeClass('active');
      $(this).addClass('active');
    } else {
      $(this).next().slideToggle();
      $(this).removeClass('active');

    }
  });

});
</script>
<div>
<ul id="nav">
  <li><a href="#" class="1">System Administrator</a>
    <ul>
      <li><a href="#" >Dashboard</a></li>
      <li><a href="#" class="1">Setting</a>
      <ul>
      <li><a href="#">General</a></li>
      <li><a href="#">Client Setup</a></li>
      <li><a href="#">Client Admin Setup</a></li>
      <li><a href="#">Channel Setup</a></li>
    </ul>
      </li>
      <li><a href="#">Messages</a></li>
      <li><a href="#">Reports</a></li>
    </ul>
  </li>
  <li><a href="#">Client Administrator</a>
    <ul>
      <li><a href="#">Dashboard</a></li>
      <li><a href="#">Setting</a>
      <ul>
      <li><a href="#">General</a></li>
      <li><a href="#">Data Setup</a></li>
      <li><a href="#">Agent Setup</a></li>
      <li><a href="#">Template Setup</a></li>
        <li><a href="#">Counter</a></li>
    </ul>
      </li>
      <li><a href="#">Messages</a></li>
      <li><a href="#">Reports</a></li>
    </ul>
  </li>
  <li><a href="#">Agent</a>
    <ul>
      <li><a href="#">Dashboard</a></li>
      <li><a href="#">Customer Search</a></li>
      <li><a href="#">Customer Details</a></li>
      <li><a href="#">Messages</a></li>
      <li><a href="#">Reports</a></li>
    </ul>
  </li>
</ul>
</div>
</div>
   <div class="clearfix grpelem" id="u772"><!-- group -->
    <div class="clearfix grpelem" id="u804"><!-- group -->
     <div class="clearfix grpelem" id="u784"><!-- column -->
      <div class="clearfix colelem" id="u776"><!-- group -->
       <div class="clearfix grpelem" id="u788-4"><!-- content -->
        <p>LOGIN INFO</p>
       </div>
      </div>
      <div class="clearfix colelem" id="u777"><!-- group -->
       <div class="clearfix grpelem" id="u782"><!-- group -->
        <div class="museBGSize grpelem" id="u779"><!-- simple frame --></div>
        <div class="clearfix grpelem" id="u778"><!-- group -->
         <div class="clearfix grpelem" id="u781-4"><!-- content -->
          <p>Parameters updated</p>
         </div>
        </div>
        <div class="clearfix grpelem" id="u780"><!-- group -->
         <div class="clearfix grpelem" id="u783-4"><!-- content -->
          <p>5</p>
         </div>
        </div>
       </div>
      </div>
      <div class="clearfix colelem" id="u796"><!-- group -->
       <div class="clearfix grpelem" id="u801"><!-- group -->
        <div class="museBGSize grpelem" id="u797"><!-- simple frame --></div>
        <div class="clearfix grpelem" id="u802"><!-- group -->
         <div class="clearfix grpelem" id="u799-4"><!-- content -->
          <p>Data files uploaded</p>
         </div>
        </div>
        <div class="clearfix grpelem" id="u800"><!-- group -->
         <div class="clearfix grpelem" id="u798-4"><!-- content -->
          <p>1</p>
         </div>
        </div>
       </div>
      </div>
      <div class="clearfix colelem" id="u789"><!-- group -->
       <div class="clearfix grpelem" id="u794-4"><!-- content -->
        <p>3</p>
       </div>
       <div class="clearfix grpelem" id="u790"><!-- group -->
        <div class="museBGSize grpelem" id="u793"><!-- simple frame --></div>
        <div class="clearfix grpelem" id="u795"><!-- group -->
         <div class="clearfix grpelem" id="u791-4"><!-- content -->
          <p>Agent added</p>
         </div>
        </div>
        <div class="grpelem" id="u792"><!-- simple frame --></div>
       </div>
      </div>
      <div class="clearfix colelem" id="u805"><!-- group -->
       <div class="clearfix grpelem" id="u811"><!-- group -->
        <div class="museBGSize grpelem" id="u809"><!-- simple frame --></div>
        <div class="clearfix grpelem" id="u810"><!-- group -->
         <div class="clearfix grpelem" id="u807-4"><!-- content -->
          <p>Template updated</p>
         </div>
        </div>
        <div class="clearfix grpelem" id="u808"><!-- group -->
         <div class="clearfix grpelem" id="u806-4"><!-- content -->
          <p>12</p>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
    <div class="clearfix grpelem" id="u803"><!-- group -->
     <div class="clearfix grpelem" id="u773"><!-- group -->
      <div class="clearfix grpelem" id="u774"><!-- group -->
       <div class="clearfix grpelem" id="u775-4"><!-- content -->
        <p>CURRENT</p>
       </div>
      </div>
     </div>
    </div>
    <div class="clearfix grpelem" id="u785"><!-- group -->
     <div class="clearfix grpelem" id="u787"><!-- group -->
      <div class="clearfix grpelem" id="u786-4"><!-- content -->
       <p>LAST</p>
      </div>
     </div>
    </div>
   </div>
   <div class="clearfix grpelem" id="u812"><!-- group -->
    <div class="clearfix grpelem" id="u818"><!-- group -->
     <div class="clearfix grpelem" id="u815"><!-- column -->
      <div class="position_content" id="u815_position_content">
       <div class="clearfix colelem" id="u820"><!-- group -->
        <div class="museBGSize grpelem" id="u819"><!-- simple frame --></div>
        <div class="clearfix grpelem" id="u816-4"><!-- content -->
         <p>REPORTS</p>
        </div>
       </div>
       <div class="colelem" id="u813"><!-- simple frame --></div>
       <div class="colelem" id="u817"><!-- simple frame --></div>
       <div class="colelem" id="u814"><!-- simple frame --></div>
      </div>
     </div>
    </div>
   </div>
   <div class="clearfix grpelem" id="u821"><!-- group -->
    <div class="clearfix grpelem" id="u826"><!-- group -->
     <div class="clearfix grpelem" id="u822"><!-- column -->
      <div class="clearfix colelem" id="u823"><!-- group -->
       <div class="museBGSize grpelem" id="u824"><!-- simple frame --></div>
       <div class="clearfix grpelem" id="u828-4"><!-- content -->
        <p><span id="u828">CHANNEL SETUP</span></p>
       </div>
      </div>
      <div class="colelem" id="u825"><!-- simple frame --></div>
     </div>
    </div>
    <div class="grpelem" id="u827"><!-- simple frame --></div>
   </div>
   <div class="clearfix grpelem" id="u834"><!-- group -->
    <div class="clearfix grpelem" id="u837"><!-- group -->
     <div class="clearfix grpelem" id="u835-4"><!-- content -->
      <p>SMS</p>
     </div>
    </div>
    <div class="clearfix grpelem" id="u838"><!-- group -->
     <div class="clearfix grpelem" id="u836-4"><!-- content -->
      <p>EMAIL</p>
     </div>
    </div>
   </div>
   <div class="grpelem" id="u976"><!-- custom html -->
    <style>
.buttn{
height:26px; 
width:72px; 
color:#000000; 
font-family: roboto; 
font-size:13px; 
background-color:#B3B3B3; 
border:#B3B3B3;
}
</style>
</div>


  <form:form  action="smsemaildata"  commandName="channel-setup">
   <div class="clearfix grpelem" id="u978"><!-- group -->
    <div class="clearfix grpelem" id="u979"><!-- group -->
     <div class="clearfix grpelem" id="pu956-4"><!-- column -->
      <div class="clearfix colelem" id="u956-4"><!-- content -->
       <p><span id="u956">Gateway ID</span></p>
      </div>
      <div class="clearfix colelem" id="u960-4"><!-- content -->
       <p><span id="u960">IP/Port</span></p>
      </div>
      <div class="clearfix colelem" id="u955-4"><!-- content -->
       <p><span id="u955">Sender ID</span></p>
      </div>
     </div>
     <div class="clearfix grpelem" id="pu937"><!-- column -->
      <div class="colelem" id="u937"><!-- custom html -->
       <form:input type="text" path="channel_GatewayId" name="gateid" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="clearfix colelem" id="pu939"><!-- group -->
       <div class="grpelem" id="u939"><!-- custom html -->
        <form:input type="text" path="Channel_ip_port" name="ip" value="" style="height:17px; width:113px; border: 1px solid #747474;"/>
</div>
       <div class="grpelem" id="u950"><!-- custom html -->
        <form:input type="text" path="Channel_ip_port" name="port" value="" style="height:17px; width:56px; border: 1px solid #747474;"/>
</div>
      </div>
      <div class="colelem" id="u968"><!-- custom html -->
       <form:input type="text" path="channel_senderid" name="smssender" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     </div>
     <div class="clearfix grpelem" id="pu973-4"><!-- column -->
      <div class="clearfix colelem" id="u973-4"><!-- content -->
       <p><span id="u973">Gateway Name</span></p>
      </div>
      <div class="clearfix colelem" id="u957-4"><!-- content -->
       <p><span id="u957">Password</span></p>
      </div>
      <div class="clearfix colelem" id="u936-4"><!-- content -->
       <p><span id="u936">API Code</span></p>
      </div>
     </div>
     <div class="clearfix grpelem" id="pu974"><!-- column -->
      <div class="colelem" id="u974"><!-- custom html -->
       <form:input type="text" path="Channel_Gatewayname" name="gatewayname" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="colelem" id="u948"><!-- custom html -->
       <form:input type="password" path="password" name="gatewaypass" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="colelem" id="u945"><!-- custom html -->
       <form:input type="text" path="apicode" name="apicode" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="clearfix colelem" id="pu971"><!-- group -->
       <div class="grpelem" id="u971"><!-- custom html -->
        <input type="reset" value="cancel" id = "Cancelsms" class="buttn"/>
</div>
       <div class="grpelem" id="u964"><!-- custom html -->
        <input type="submit" value="save" id = "Savesms" class="buttn"/>
</div>
      </div>
     </div>
    </div>
   </div>
   </form:form>
	  
	<form:form  action="emaildata"  commandName="channel-setup">
   
   <div class="clearfix grpelem" id="u980"><!-- group -->
    <div class="clearfix grpelem" id="u993"><!-- group -->
     <div class="clearfix grpelem" id="pu985-4"><!-- column -->
      <div class="clearfix colelem" id="u985-4"><!-- content -->
       <p><span id="u985">Gateway ID</span></p>
      </div>
      <div class="clearfix colelem" id="u986-4"><!-- content -->
       <p><span id="u986">IP/Port</span></p>
      </div>
      <div class="clearfix colelem" id="u983-4"><!-- content -->
       <p><span id="u983">Sender ID</span></p>
      </div>
     </div>
     <div class="clearfix grpelem" id="pu981"><!-- column -->
      <div class="colelem" id="u981"><!-- custom html -->
       <form:input type="text" path="channel_GatewayId" name="emgateid" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="clearfix colelem" id="pu1000"><!-- group -->
       <div class="grpelem" id="u1000"><!-- custom html -->
        <form:input type="text" path="Channel_ip_port" name="emip" value="" style="height:17px; width:113px; border: 1px solid #747474;"/>
</div>
       <div class="grpelem" id="u991"><!-- custom html -->
        <form:input type="text" path="Channel_ip_port" name="emport" value="" style="height:17px; width:56px; border: 1px solid #747474;"/>
</div>
      </div>
      <div class="colelem" id="u996"><!-- custom html -->
       <form:input type="text" path="channel_senderid" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     </div>
     <div class="clearfix grpelem" id="pu1005-4"><!-- column -->
      <div class="clearfix colelem" id="u1005-4"><!-- content -->
       <p><span id="u1005">Gateway Name</span></p>
      </div>
      <div class="clearfix colelem" id="u1002-4"><!-- content -->
       <p><span id="u1002">Password</span></p>
      </div>
     </div>
     <div class="clearfix grpelem" id="pu1003"><!-- column -->
      <div class="colelem" id="u1003"><!-- custom html -->
       <form:input type="text" name="emlgatewayname" path="Channel_Gatewayname" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="colelem" id="u998"><!-- custom html -->
       <form:input type="password" path="password" name="emlgatewaypass" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      <div class="clearfix colelem" id="pu994"><!-- group -->
       <div class="grpelem" id="u994"><!-- custom html -->
        <input type="reset" value="Cancel" id = "Canceleml" class="buttn"/>
</div>
       <div class="grpelem" id="u987"><!-- custom html -->
        <input type="submit" value="Save" id = "Saveeml" class="buttn"/>
</div>
      </div>
     </div>
    </div>
   </div>
    </form:form> 
  </div>
  
  
  <!-- JS includes -->
  <script type="text/javascript">
   if (document.location.protocol != 'https:') document.write('\x3Cscript src="http://musecdn2.businesscatalyst.com/scripts/4.0/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script type="text/javascript">
   window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script src="scripts/museutils.js?275725342" type="text/javascript"></script>
  <script src="scripts/jquery.musepolyfill.bgsize.js?185257658" type="text/javascript"></script>
  <!-- Other scripts -->
 <script>
  $(document).ready(function(){
 
 $("#u835-4").click(function(){
        $("#u979").css("display","block");
        $("#u993").css("display","none");
		$("#u835-4").css("color","#000000");
		$("#u836-4").css("color","#A0A0A0");
		
    });
 $("#u836-4").click(function(){
   $("#u979").css("display","none");
         $("#u993").css("display","block");
		 		$("#u835-4").css("color","#A0A0A0");
		$("#u836-4").css("color","#000000");
    });
});
  </script> 
  
  </body>
</html>
