<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="html" lang="en-US">
 <head>

  <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "security_check.css"], "outOfDate":[]};
</script>
  
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>security_check</title>
  <!-- CSS -->
  <style type="text/css">
  <%@include file="css/site_global.css"%>
  <%@include file="css/master_login_m.css"%>
  <%@include file="css/security_check.css"%>
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
    <div class="clearfix colelem" id="pu1109"><!-- group -->
     <div class="clearfix grpelem" id="u1109"><!-- group -->
      <div class="clearfix grpelem" id="u1113"><!-- group -->
       <div class="clearfix grpelem" id="u1112"><!-- column -->
        <div class="clearfix colelem" id="u1115"><!-- group -->
         <div class="museBGSize grpelem" id="u1111"><!-- simple frame --></div>
         <div class="clearfix grpelem" id="u1114-4"><!-- content -->
          <p><span id="u1114">SIGN IN</span></p>
         </div>
        </div>
        <div class="colelem" id="u1116"><!-- simple frame --></div>
       </div>
      </div>
      <div class="grpelem" id="u1110"><!-- simple frame --></div>
     </div>
     <div class="clearfix grpelem" id="u1117-4"><!-- content -->
      <p><span id="u1117">SECURITY QUESTION</span></p>
     </div>
     <div class="grpelem" id="u1118"><!-- custom html -->
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
     
     
     <form:form action="answerquestionclass" commandName="answerquestion" data-transition="flip">
     <div class="clearfix grpelem" id="u1129"><!-- column -->
      <div class="clearfix colelem" id="u1122-4"><!-- content -->
       <p><span id="u1122">${question}</span></p>
      </div>
      <div class="clearfix colelem" id="pu1121-4"><!-- group -->
       <div class="clearfix grpelem" id="u1121-4"><!-- content -->
        <p>Answer</p>
       </div>
       <div class="grpelem" id="u1127"><!-- custom html -->
        <form:input path="answer" type="text" name="ans" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
      </div>
      <div class="clearfix colelem" id="pu1125"><!-- group -->
       <div class="grpelem" id="u1125"><!-- custom html -->
        <input type="submit" value="NEXT" class="buttn"/>
</div>
       <div class="grpelem" id="u1123"><!-- custom html -->
        <input type="reset" value="CANCEL" class="buttn"/>
</div>
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
