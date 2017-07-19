<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="html" lang="en-US">
 <head>

  <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "forgot_password.css"], "outOfDate":[]};
</script>
  
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>forgot_password</title>
  <!-- CSS -->
  <style type="text/css">
  <%@include file="css/site_global.css"%>
  <%@include file="css/master_login_m.css"%>
  <%@include file="css/forgot_password.css"%>
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
     <img class="block" id="u624_img" src="../images/logo.png" alt="" width="106" height="39"/>
    </div>
   </div>
   <div class="clearfix grpelem" id="pu623"><!-- column -->
    <div class="colelem" id="u623"><!-- simple frame --></div>
    <div class="clearfix colelem" id="pu1054"><!-- group -->
     <div class="clearfix grpelem" id="u1054"><!-- group -->
      <div class="clearfix grpelem" id="u1057"><!-- group -->
       <div class="clearfix grpelem" id="u1061"><!-- column -->
        <div class="clearfix colelem" id="u1056"><!-- group -->
         <div class="museBGSize grpelem" id="u1059"><!-- simple frame --></div>
         <div class="clearfix grpelem" id="u1055-4"><!-- content -->
          <p><span id="u1055">SIGN IN</span></p>
         </div>
        </div>
        <div class="colelem" id="u1060"><!-- simple frame --></div>
        <div class="colelem" id="u1058"><!-- simple frame --></div>
       </div>
      </div>
     </div>
     <div class="clearfix grpelem" id="u1068-4"><!-- content -->
      <p><span id="u1068">FORGOT PASSWORD</span></p>
     </div>
     <div class="grpelem" id="u1081"><!-- custom html -->
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
 <form:form action="forgorpasswordclass" commandName="forgotpassword">
     <div class="clearfix grpelem" id="u1083"><!-- column -->
      <div class="clearfix colelem" id="u1077-4"><!-- content -->
       <p><span id="u1077">Please enter below details to retrieve password</span></p>
      </div>
      <div class="clearfix colelem" id="pu1070-4"><!-- group -->
       <div class="clearfix grpelem" id="u1070-4"><!-- content -->
        <p>User Name</p>
       </div>
       <div class="grpelem" id="u1071"><!-- custom html -->
        <form:input type="text"  path="userid" name="usrname" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      </div>
      <div class="clearfix colelem" id="pu1069-4"><!-- group -->
       <div class="clearfix grpelem" id="u1069-4"><!-- content -->
        <p>Company ID</p>
       </div>
       <div class="grpelem" id="u1073"><!-- custom html -->
        <form:input type="text" path="companyid"  name="companyid" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      </div>
      <div class="clearfix colelem" id="pu1075"><!-- group -->
       <div class="grpelem" id="u1075"><!-- custom html -->
        <input type="submit" value="NEXT" class="buttn"/>
</div>
       <div class="grpelem" id="u1079"><!-- custom html -->
        <input type="reset" value="CANCEL" class="buttn"/>
</div>
      </div>
      <div class="clearfix colelem" id="u1078-4"><!-- content -->
       <p><a href="forgotpasswordnew" style="    text-decoration: none; color: #A0A0A0;">Forgot User Name/Company ID?</a></p>
      </div>
     </div>
     </form:form>
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
