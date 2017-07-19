<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="html" lang="en-US">
 <head>

  <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "new_user.css"], "outOfDate":[]};
</script>
  
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2015.0.2.310"/>
  <title>New_User</title>
  <!-- CSS -->
  <style>
  <%@include file="css/site_global.css"%>
  <%@include file="css/master_login_m.css"%>
   
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
    <div class="clearfix colelem" id="pu1467"><!-- group -->
     <div class="clearfix grpelem" id="u1467"><!-- group -->
      <div class="clearfix grpelem" id="u1474"><!-- group -->
       <div class="clearfix grpelem" id="u1468"><!-- column -->
        <div class="clearfix colelem" id="u1471"><!-- group -->
         <div class="museBGSize grpelem" id="u1470"><!-- simple frame --></div>
         <div class="clearfix grpelem" id="u1472-4"><!-- content -->
          <p><span id="u1472">SIGN IN</span></p>
         </div>
        </div>
        <div class="colelem" id="u1473"><!-- simple frame --></div>
       </div>
      </div>
      <div class="grpelem" id="u1469"><!-- simple frame --></div>
     </div>
     <div class="clearfix grpelem" id="u1475-4"><!-- content -->
      <p><span id="u1475">WELCOME</span></p>
     </div>
     <div class="grpelem" id="u1476"><!-- custom html -->
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
<form:form action="newuserform" commandName="NewUserFile" modelAttribute="NewUserFile">
     <div class="clearfix grpelem" id="u1478-4"><!-- content -->
      <p>Answer</p>
     </div>
     <div class="grpelem" id="u1479"><!-- custom html -->
      <form:input path="answer" type="text" name="ans" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     <div class="grpelem" id="u1481"><!-- custom html -->
      <input type="submit" value="NEXT" class="buttn"/>
</div>
     <div class="grpelem" id="u1483"><!-- custom html -->
      <input type="reset" value="CANCEL" class="buttn"/>
</div>
     <div class="clearfix grpelem" id="u1485-4"><!-- content -->
      <p>Password</p>
     </div>
     <div class="grpelem" id="u1486"><!-- custom html -->
      <form:input path="passwordchanged" type="password" name="pass" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     <div class="grpelem" id="u1488"><!-- custom html -->
      <form:input path="question" type="text" name="sec" value="" style="height:17px; width:179px; border: 1px solid #747474;"/>
</div>
     <div class="clearfix grpelem" id="u1490-4"><!-- content -->
      <p>Security Question</p>
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
  <script type="text/javascript">
   $(document).ready(function() { try {
(function(){var a={},b=function(a){if(a.match(/^rgb/))return a=a.replace(/\s+/g,"").match(/([\d\,]+)/gi)[0].split(","),(parseInt(a[0])<<16)+(parseInt(a[1])<<8)+parseInt(a[2]);if(a.match(/^\#/))return parseInt(a.substr(1),16);return 0};(function(){$('link[type="text/css"]').each(function(){var b=($(this).attr("href")||"").match(/\/?css\/([\w\-]+\.css)\?(\d+)/);b&&b[1]&&b[2]&&(a[b[1]]=b[2])})})();(function(){$("body").append('<div class="version" style="display:none; width:1px; height:1px;"></div>');
for(var c=$(".version"),d=0;d<Muse.assets.required.length;){var f=Muse.assets.required[d],g=f.match(/([\w\-\.]+)\.(\w+)$/),k=g&&g[1]?g[1]:null,g=g&&g[2]?g[2]:null;switch(g.toLowerCase()){case "css":k=k.replace(/\W/gi,"_").replace(/^([^a-z])/gi,"_$1");c.addClass(k);var g=b(c.css("color")),h=b(c.css("background-color"));g!=0||h!=0?(Muse.assets.required.splice(d,1),"undefined"!=typeof a[f]&&(g!=a[f]>>>24||h!=(a[f]&16777215))&&Muse.assets.outOfDate.push(f)):d++;c.removeClass(k);break;case "js":k.match(/^jquery-[\d\.]+/gi)&&
typeof $!="undefined"?Muse.assets.required.splice(d,1):d++;break;default:throw Error("Unsupported file type: "+g);}}c.remove();if(Muse.assets.outOfDate.length||Muse.assets.required.length)c="Some files on the server may be missing or incorrect. Clear browser cache and try again. If the problem persists please contact website author.",(d=location&&location.search&&location.search.match&&location.search.match(/muse_debug/gi))&&Muse.assets.outOfDate.length&&(c+="\nOut of date: "+Muse.assets.outOfDate.join(",")),d&&Muse.assets.required.length&&(c+="\nMissing: "+Muse.assets.required.join(",")),alert(c)})()})();
/* body */
Muse.Utils.transformMarkupToFixBrowserProblemsPreInit();/* body */
Muse.Utils.prepHyperlinks(true);/* body */
Muse.Utils.showWidgetsWhenReady();/* body */
Muse.Utils.transformMarkupToFixBrowserProblems();/* body */
} catch(e) { if (e && 'function' == typeof e.notify) e.notify(); else Muse.Assert.fail('Error calling selector function:' + e); }});
</script>
   </body>
</html>
