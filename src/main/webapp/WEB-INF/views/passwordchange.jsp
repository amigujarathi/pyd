<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="html" lang="en-US">
 <head>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
 <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "reenter_password.css"], "outOfDate":[]};
</script>
  
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>reenter_password</title>
  <!-- CSS -->
  <style type="text/css">
  <%@include file="css/site_global.css"%>
  <%@include file="css/master_login_m.css"%>
  <%@include file="css/reenter_password.css"%>
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
    <div class="clearfix colelem" id="pu1130"><!-- group -->
     <div class="clearfix grpelem" id="u1130"><!-- group -->
      <div class="clearfix grpelem" id="u1132"><!-- group -->
       <div class="clearfix grpelem" id="u1137"><!-- column -->
        <div class="clearfix colelem" id="u1131"><!-- group -->
         <div class="museBGSize grpelem" id="u1133"><!-- simple frame --></div>
         <div class="clearfix grpelem" id="u1136-4"><!-- content -->
          <p><span id="u1136">SIGN IN</span></p>
         </div>
        </div>
        <div class="colelem" id="u1135"><!-- simple frame --></div>
       </div>
      </div>
      <div class="grpelem" id="u1134"><!-- simple frame --></div>
     </div>
     <div class="clearfix grpelem" id="u1138-4"><!-- content -->
      <p><span id="u1138">RESET PASSWORD</span></p>
     </div>
     <div class="grpelem" id="u1139"><!-- custom html -->
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
<form:form action="newpasswordform" commandName="passwordchange">

     <div class="clearfix grpelem" id="u1147-4"><!-- content -->
      <p>Enter Password</p>
     </div>
     <div class="grpelem" id="u1148"><!-- custom html -->
      <form:input type="password" path="password" name="password" id="pwd" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     <div class="grpelem" id="u1142"><!-- custom html -->
      <input type="submit" value="NEXT" class="buttn"/>
</div>
     <div class="clearfix grpelem" id="u1146-4"><!-- content -->
      <p><span id="u1146">Please enter new password</span></p>
     </div>
     <div class="grpelem" id="u1144"><!-- custom html -->
      <input type="reset" value="CANCEL" class="buttn"/>
</div>
     <div class="clearfix grpelem" id="u1150-4"><!-- content -->
      <p>Re-enter Password</p>
     </div>
     <div class="grpelem" id="u1151"><!-- custom html -->
      <form:input path="newpassword" type="password" name="repass" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     <div class="grpelem" id="u1153"><!-- custom html -->
      <form:input type="hidden" path="hashcode"  name="hash" value='<%=request.getParameter("hashcode") %>' style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
</form:form>
     <div class="clearfix grpelem" id="u1155-4"><!-- content -->
      </div>
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
