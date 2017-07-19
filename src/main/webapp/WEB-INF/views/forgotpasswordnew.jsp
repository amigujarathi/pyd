<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="html" lang="en-US">
 <head>

  <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "forgot_username.css"], "outOfDate":[]};
</script>
  
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>forgot_username</title>
  <!-- CSS -->
  <style type="text/css">
  <%@include file="css/site_global.css"%>
  <%@include file="css/master_login_m.css"%>
  <%@include file="css/forgot_username.css"%>
  </style>
  <!-- Other scripts -->
  <script type="text/javascript">
   document.documentElement.className += ' js';
</script>
   </head>
 <body>

  <div class="clearfix" id="page"><!-- group -->
   <div class="clearfix grpelem" id="u622"><!-- group -->
    <div class="clip_frame grpelem" id="u624"><!-- image -->
     <img class="block" id="u624_img" src="images/logo.png" alt="" width="106" height="39"/>
    </div>
   </div>
   <div class="clearfix grpelem" id="pu623"><!-- column -->
    <div class="colelem" id="u623"><!-- simple frame --></div>
    <div class="clearfix colelem" id="pu1084"><!-- group -->
     <div class="clearfix grpelem" id="u1084"><!-- group -->
      <div class="clearfix grpelem" id="u1091"><!-- group -->
       <div class="clearfix grpelem" id="u1089"><!-- column -->
        <div class="clearfix colelem" id="u1086"><!-- group -->
         <div class="museBGSize grpelem" id="u1090"><!-- simple frame --></div>
         <div class="clearfix grpelem" id="u1085-4"><!-- content -->
          <p><span id="u1085">SIGN IN</span></p>
         </div>
        </div>
        <div class="colelem" id="u1088"><!-- simple frame --></div>
       </div>
      </div>
      <div class="grpelem" id="u1087"><!-- simple frame --></div>
     </div>
     <div class="clearfix grpelem" id="u1092-4"><!-- content -->
      <p><span id="u1092">FORGOT USERNAME/ COMPANY ID</span></p>
     </div>
     <div class="grpelem" id="u1093"><!-- custom html -->
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
<form:form action="forgorpasswordnewclass" commandName="forgotpasswordnew">
     <div class="clearfix grpelem" id="u1108"><!-- column -->
      <div class="clearfix colelem" id="u1107-4"><!-- content -->
       <p><span id="u1107">Please enter registered email id to retrieve sign in details</span></p>
      </div>
      <div class="clearfix colelem" id="pu1102-4"><!-- group -->
       <div class="clearfix grpelem" id="u1102-4"><!-- content -->
        <p>Email ID</p>
       </div>
       <div class="grpelem" id="u1097"><!-- custom html -->
        <form:input type="text"  path="emailid" name="usrname" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      </div>
      <div class="clearfix colelem" id="pu1105"><!-- group -->
       <div class="grpelem" id="u1105"><!-- custom html -->
        <input type="submit" value="NEXT" class="buttn"/>
</div>
       <div class="grpelem" id="u1103"><!-- custom html -->
        <input type="reset" value="CANCEL" class="buttn"/>
</div>
      </div>
     </div>
     
     </form:form>
     &nbsp;&nbsp; &nbsp;<font color="red">${message}</font> <br>
    </div>
   </div>
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
 
   </body>
</html>
