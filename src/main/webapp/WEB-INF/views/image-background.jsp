<%@ page language="java"   pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html class="html" lang="en-US">

  <head>
    <title>cropit</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="../js/jquery.cropit.js"></script>

 
	
    <style>
      .headerText {
			color: #008848;
			font-family: VPBank;
			font-size: 100%;
			margin-left: 100px;
			text-align: left;			
		  }

		  .normalText {
			font-family: VPBank;
			font-size: 80%;
			margin-left: 120px;
			text-align: left;			
			color: #000000;
			 line-height: 1.3;
		  }
		  
		  .normalText {
			font-family: VPBank;
			font-size: 80%;
			margin-left: 120px;
			text-align: left;	
			color: #000000;	
			 line-height: 1.3;
		  }
		  
		  .warning {
			width: 12px;
			height: 12px;
			border-radius: 50%;
			font-size: 10px;
			color: #fff;
			line-height: 12px;
			text-align: center;
			background: #008848;
			margin-top: 2px;
		  }
		  
		  .button {
			background-color: #008848; /* Green */
			border: none;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			border-radius: 15px;
		  }
    
	      .cropit-preview {
	        
	        background-size: cover;
	        border: 0px solid #ccc;
	        border-radius: 3px;
	        margin-top: 7px;
	        width: 338px;
	        height: 214px;
			
	      }
		.cancel
		{
		    display:block;
		    position:relative;
		    top:3px;
		    right:2px;
		    color:black;
		    height:30px;
		    width: 15px;
		    font-size:30px;
		    text-decoration:none;
		    text-align:center;
		    font-weight:bold;
		}
      .cropit-preview-image-container {
        cursor: move;
		opacity: 0.5;
		z-index: 2;
		
      }

      .cropit-preview-background {
        opacity: 0.2;
        cursor: auto;
		z-index: 2;
      }

      .image-size-label {
        margin-top: 10px;
      }

      input, .export {
        /* Use relative position to prevent from being covered by image background */
        position: relative;
        z-index: 1;
        display: block;
      }

      button {
        margin-top: 10px;
      }
	  #overlay {
		 position:relative;
		  height:100px;
		   width:100px;
		   top:0;
		   left:0;     
		}

	::-webkit-file-upload-button {
	 margin-left: 378px;
	    margin-top: -8px;
	    position: relative;
	    z-index: 20;
	    width: 143px;
	    height: 33px;
	    opacity: 0;
	}
	input[type="range"]{
	    -webkit-appearance: none;
	    -moz-apperance: none;
	    border-radius: 6px;
	    height: 9px;
	    background-image: -webkit-gradient(
	        linear,
	        left top,
	        right top,
	        color-stop(0.15, #C5C5C5),
	        color-stop(0.15, #C5C5C5)
	    );
	}

	input[type='range']::-webkit-slider-thumb {
	    -webkit-appearance: none !important;
	    background-color: #E9E9E9;
	    border: 1px solid #CECECE;
	    height: 31px;
	    width: 15px;
	    border-radius: 6px;
	}
	#box1 {
	  width:400px;
	  height:300px;
	  border-style: solid;
	  border-width: 2px;
	}
	canvas {
	    max-width: 100%;
	    max-height: 100%;
	}
    </style>
  </head>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <body>
   <div>   
   			<img src="../images/logo.png" style="height:65px;width:200px;margin-left:181px;">
   </div>
   <hr/>
   <style>
   hr.style-four {
    height: 12px;
    border: 10px;
    box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
}
   </style>
 
  <br><br><br><br><br><br><br><br>
 
    	<div class="image-editor" align="center" style="color:#0000FF" >
		     <div id="tab_middle" >
			     <img  src="../images/page2fileselector.png" style="opacity:1;margin-left: -146px;width: 944px;" id="selectortab" />   
						<div class="image-size-label" id="labelid"  style="margin-top: 10px;margin-left: 296px;visibility: hidden;position: absolute;">
							Resize image
					  	</div>
						<input type="file" class="cropit-image-input" id="abc" style=" margin-top: -89px;margin-left: -65px;position: relative;z-index: 2;width: 300px;">
						<div style="margin-top:65px;">
							<img src="../images/page3menunew.png" style=" margin-left: -405px;height: 56px;position:relative;margin-top: 88px;visibility: hidden;" id="page3menu">
						</div>
						<div>
							<input type="range" min="0"   max="200" value="100" class="cropit-image-zoom-input" onchange="outputUpdate(this.value);" id="sizeimage" style="position: relative;visibility: hidden;" >
					 	</div>
						<output for="sizeimage" id="volume" style="visibility:hidden"></output>
						<button class="rotate-cw" width="48" height="48" id="rotateid" style="position: relative;visibility: hidden;opacity: 0;cursor: pointer;">
								<img  src="../images/ACW.png" style="opacity:0; height:25px; width:25px" />   
						</button>
						<div style=" margin-left: 270px; margin-top: 57px; width: 222px;">
							<span style=" margin-left: -405px;height: 56px;position: relative;margin-top: 88px;visibility: hidden;" id="message1">
								<h1 class="headerText" style="font-size: 170%;margin-left: 40px;">
									<img src="../images/exclemation.png" style="height: 40px; position: absolute; margin-left: -51px; margin-top: -8px;">
									<b style="color:red">Lưu ý:</b>
								</h1>
								<p class="normalText" style="font-size: 145%; margin-left: 20px;">
									<img src="../images/tabArrow.jpg">
									 	Hãy để vị trí ảnh lấp đều</br>
				 					 phần trắng trên mặt Thẻ</br>
				 					 <img src="../images/tabArrow.jpg">
				  					 	Hãy chắc chắn rằng hình ảnh</br>
				 				  	của bạn không chứa:<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Tài liệu bản quyền hay</br>
                   					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;thương hiệu</br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Nội dung không phù hợp</br>
								</p>
							</span>
						</div>
						<div style="margin-top: 30px;" >
							<img src="../images/page3preview.png" class="export" id="previewid" onclick="genScreenshot()" style="margin-left: 536px;visibility: hidden;position: relative;margin-top: 315px;cursor: pointer;" >
						</div>
						
						
						<div style="margin-top:39px;">
						<span style=" margin-left: -405px;height: 56px;position:relative;margin-top: 188px;visibility: hidden;" id="message2">
							<img src="../images/box.png" style="height: 165px; margin-top: 30px;">
							<p class="normalText" style="font-size: 145%; margin-left: 190px;margin-top:-132px;position: absolute;width: 300px;">
									 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đây là hình ảnh</br>
				 					 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thẻ tín dụng</br>
				 						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FE CREDIT PLUS+<br>
				  					 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;của bạn.</br>
							</p>
						</span>
						</div>
						<div style="width:535px;margin-left: -225px;margin-top: 20px;">
						<span style=" margin-left: -405px;height: 56px;position: relative;margin-top: 588px;visibility: hidden;" id="message3">
							<p class="normalText" style="font-size: 157%;; margin-left: 20px;">	
									Nếu bạn hài lòng với hình ảnh Thẻ, nhấn ‘Gửi hình ảnh’ để tiếp tục.
							</p>		
						</span>
						</div>
						<!--  <img src="../images/page3message2.png" style=" margin-left: -405px;height: 56px;position: absolute;margin-top: 188px;visibility: hidden;" id="message2"> -->
						<div style="margin-top:-599px;">
							<img src="../images/page3save.png" class="save"  style="margin-left: 118px;position: absolute;margin-top: 30px;visibility: hidden;" id="saveid">
						</div>
						
						<!--  <button class="export" onclick="genScreenshot()" id="previewid" style="margin-left: 536px;visibility: hidden;position: absolute;margin-top: 30px;">Preview</button>-->
						<!--  <button class="save" id="saveid" style="margin-left: 118px;position: absolute;margin-top: 30px;visibility: hidden;">Save</button>-->
		</div>
	
		
	  <script>
	  function outputUpdate(vol) {
			document.querySelector('#volume').value = vol*100;
		}
	  </script>
      <div class="cropit-preview" style="border-style: ridge;">
		<img id="overlay" src="../images/FEC_CardImage.png" style="opacity:1; height:100%; width:100%;border-style: ridge;visibility: hidden;"/>
	  </div>
     
      <div id="divx" style="width:2500px"> 
		<div style="text-align:center;margin-left: 30px">
			<div style="margin-left: 100px;font-size: 22px;margin-top: -221px;">	
				<h1 class="headerText">
					<b>Hướng dẫn tải hình ảnh</b>
				</h1>
				<p class="normalText">
					1. Nhấp chuột nút “Tìm kiếm” để chọn hình ảnh từ máy tính của bạn</br>
					2. Chọn hình ảnh từ máy tính bằng cách nhấn chuột 2 lần vào ảnh</br>
					3. Nhấn chọn ‘Tải hình ảnh’</br>
				</p>
					
				<h1 class="headerText" style="font-size:80%">	
					<div class="warning" style="float:left;">!</div>
					<b>&nbsp;Vài điều cần ghi nhớ:</b>
				</h1>
				</header>
				<p class="normalText">
					. Sừ dụng hình ảnh chất lượng cao – hình ảnh chất lượng tốt để đảm bảo Thẻ in ra màu sắc sắc nét. Tập tin ảnh có thể là</br>
					  &nbsp;&nbsp;định dạng JPEG (.jpg), PNG, GIF, Bitmap (.bmp) hoặc TIFF.</br>
					. Lưu ý: Dung lượng hình ảnh càng lớn, thời gian tải hình ảnh sẽ lâu hơn.</br>
				</p>
				<h1 class="headerText">
					<b>Thẻ tín dụng FE CREDIT PLUS+ Selfie - Điều khoản và điều kiện:</b>
				</h1>
				<p class="normalText">
					1. Tôi cam kết rằng những hình ảnh này thuộc sỡ hữu của tôi và tôi cam kết chịu trách nhiệm trong việc sử dụng những</br>
					hình ảnh này trên Thẻ.</br></br>
					2. Tôi đồng ý với <a href="www.google.com">Điều khoản & Điều kiện</a> và <a href="www.google.com">Nguyên tắc hình ảnh</a> của FE CREDIT cũng như quyền sử dụng hình ảnh trên</br>
					Thẻ tín dụng FE CREDIT PLUS + Selfie.</br></br>
					3. Tôi đồng ý rằng FE CREDIT không chịu bất kỳ trách nhiệm về tính hợp pháp, hợp lệ về nội dung hình ảnh của tôi được</br>
					thiết kế trên Thẻ.</br></br>
				</p>
			</div>
		
			<div>
			<input type="checkbox" id="keepsign" name="keepsigninchekbox" style="margin-left: 183px;margin-top: -30px;position: relative;"/>
				<div style="margin-left:-732px;margin-top:-23px">
				<label for="keepsign" class="normalText">
					<span style="position: relative;width: 983px; margin-left: -505px;margin-top: -35px;font-size: 200%; ">Tôi đồng ý với các điều khoản và điều kiện của Thẻ tín dụng FE CREDIT PLUS+ Selfie và hướng dẫn sử dụng hình.</span> 
				</label>
				</div>
			</div>
		    </div>
		</div>
		<div style="margin-top:20px;">
		<input type="submit" class="button" id="adjustimage" style="position:relative;" value="TẢI ẢNH LÊN"></input>
		</div>
		</div>  
		
	
  
    
        

	  <canvas id="myCanvas" width="338" height="214" style="    position: relative;    border-radius:10px;margin-left: 507px;margin-top: -229px;border-style:hidden;border-radius: 15px;">Your browser does not support the HTML5 canvas tag.</canvas>
	
		<form:form method="POST" commandName="image" modelAttribute="image"  id="imageform" action="uploadFile" enctype="multipart/form-data">
		       <div style="visibility: hidden;">
		       		<form:input type="file" path="fileData"  id="some1"/><br />
		       
				                <form:input type="text" path="imageData1"  id="s1"/><br />
								<form:input type="text" path="imageData2"  id="s2"/><br />
								<form:input type="text" path="imageData3"  id="s3"/><br />
								<form:input type="text" path="imageData4"  id="s4"/><br />
								<form:input type="text" path="imageData5"  id="s5"/><br />
								<form:input type="text" path="imageData6"  id="s6"/><br />
								<form:input type="text" path="imageData7"  id="s7"/><br />
								<form:input type="text" path="imageData8"  id="s8"/><br />
								<form:input type="text" path="imageData9"  id="s9"/><br />
								<form:input type="text" path="imageData10"  id="s10"/><br />								
								<form:input type="text" path="imageData11"  id="s11"/><br />
								<form:input type="text" path="imageData12"  id="s12"/><br />
								<form:input type="text" path="imageData13"  id="s13"/><br />
								<form:input type="text" path="imageData14"  id="s14"/><br />
								<form:input type="text" path="imageData15"  id="s15"/><br />
								<form:input type="text" path="imageData16"  id="s16"/><br />
								<form:input type="text" path="imageData17"  id="s17"/><br />
								<form:input type="text" path="imageData18"  id="s18"/><br />
								<form:input type="text" path="imageData19"  id="s19"/><br />
								<form:input type="text" path="imageData20"  id="s20"/><br />								
								<form:input type="text" path="imageData21"  id="s21"/><br />
								<form:input type="text" path="imageData22"  id="s22"/><br />
				</div>			 
				
		
   	</form:form>

     <script>
     $("document").ready(function(){
    	    $("#abc").change(function() {
    	                //alert('changed!');
    	                
    	    //	var loading = document.getElementById ( "abc" ) ;
            //    loading.style.visibility = "hidden" ;
                document.getElementsByClassName('cropit-preview-image-container')[0].style.visibility = 'hidden';
                document.getElementsByClassName('cropit-preview-background-container')[0].style.visibility = 'hidden';
                
                var overlayid = document.getElementById ( "overlay" ) ;
                overlayid.style.visibility = "hidden" ;
                
               
                
                
    	            });

    	    $("#previewid").click(function() {
    	    	  var message2 = document.getElementById ( "message2" ) ;
                  message2.style.visibility = "visible" ;
                  message2.style.marginLeft='197px';
                  message2.style.marginTop ='317px';
                  message2.style.height='117px';
                  
                  var message2 = document.getElementById ( "message3" ) ;
                  message2.style.visibility = "visible" ;
                  message2.style.marginLeft='-252px';
                  message2.style.marginTop ='542px';
                  message2.style.height='117px';
                  saveid.style.visibility = "visible" ;
                  saveid.style.marginLeft = '-82px';
                  saveid.style.marginTop  = '599px';
                  saveid.style.height='50px';
                 
    	    });
    	    
    	    
    	    
    	    
    	    
    	    $("#adjustimage").click(function(){
    	    	
    	    	var atLeastOneIsChecked = $('input[name="keepsigninchekbox"]:checked').length > 0;
    	         	
    	   		 if(atLeastOneIsChecked){
    	   		  var previewid = document.getElementById ( "previewid" ) ;
                  previewid.style.visibility = "visible" ;
                  previewid.style.marginLeft ='-74px';	
                  previewid.style.marginTop = '-55px';
                  previewid.style.height='42px';
                  
    	    	
    	    	var loading = document.getElementById ( "abc" ) ;
                loading.style.visibility = "hidden" ;
                
                var volume = document.getElementById ( "volume" ) ;
                volume.style.visibility = "hidden" ; 
                
                var selector = document.getElementById ( "selectortab" ) ;
                selector.style.visibility = "hidden" ;
                
                var divx = document.getElementById ( "divx" ) ;
                divx.style.visibility = "hidden" ;
                
               
                var adjustimage = document.getElementById ( "adjustimage" ) ;
                adjustimage.style.visibility = "hidden" ;
                
                document.getElementsByClassName('cropit-preview-image-container')[0].style.visibility = 'visible';
                document.getElementsByClassName('cropit-preview-background-container')[0].style.visibility = 'visible';
                
                var message1 = document.getElementById ( "message1" ) ;
                message1.style.visibility = "visible" ;
                message1.style.marginLeft='238px';
                message1.style.marginTop ='-53px';
                message1.style.height='225px';
                
                var message2 = document.getElementById ( "message2" ) ;
                message2.style.visibility = "hidden" ;
                message2.style.marginLeft='197px';
                message2.style.marginTop ='317px';
                message2.style.height='117px';
                
                var pagemenu = document.getElementById ( "page3menu" ) ;
                pagemenu.style.visibility = "visible" ;
                pagemenu.style.marginLeft='-193px';
                pagemenu.style.height='111px';
                pagemenu.style.marginTop ='-173px';
                
                var tab = document.getElementById ( "tab_middle" ) ;
                tab.style.visibility = "visible" ;
                tab.style.width='0px';
                tab.style.marginLeft='62px';
                tab.style.height='0px';
                
                var overlayid = document.getElementById ( "overlay" ) ;
                overlayid.style.visibility = "visible" ;
                
                var sizeimageid = document.getElementById ( "sizeimage" ) ;
                sizeimageid.style.visibility = "visible" ;
                sizeimageid.style.marginTop ='-130px';
                sizeimageid.style.marginLeft ='-165px';
                sizeimageid.style.width='235px';
                
                var rotateid = document.getElementById ( "rotateid" ) ;
                rotateid.style.visibility = "visible" ;
                rotateid.style.marginLeft ='130px';
                rotateid.style.marginTop ='-43px';
                rotateid.style.height='52px';
                rotateid.style.width='56px';
                
              
               ///\\\
                var saveid = document.getElementById ( "saveid" ) ;
                saveid.style.visibility = "hidden" ;
                saveid.style.marginLeft = '-82px';
                saveid.style.marginTop  = '548px';
                saveid.style.height='50px';
               
                
                
                
                var labelid = document.getElementById ( "labelid" ) ;
                labelid.style.visibility = "hidden" ;
               
                
                var imgBtnBack = document.getElementById ( "imgBtnBack" ) ;
                imgBtnBack.style.visibility = "hidden" ;
                alert('Done');
                
    	    }
    	    else{
    	    	alert('Please mark the check box');
    	    }
              
    		});
    	});
     
     
     
      $(function() {
        $('.image-editor').cropit({
          exportZoom: 1.0,
          imageBackground: true,
          imageBackgroundBorderWidth: 20,
          imageState: {
            src: 'http://lorempixel.com/500/400/',
          },
        });
		
		 

        $('.rotate-cw').click(function() {
          $('.image-editor').cropit('rotateCW');
        });
        $('.rotate-ccw').click(function() {
          $('.image-editor').cropit('rotateCCW');
        });

        $('.export').click(function() {
			var imageData = $('.image-editor').cropit('export');
			// debugger
			 //window.open(imageData);
			
		//	 var download = document.createElement('a');
		//	download.href = imageData;
		//	download.download = 'file:///D:/selfie%20image/reddot.png';
		//	download.click();
				  
			 
			var c = document.getElementById("myCanvas");
			
			var ctx1 = c.getContext("2d");
			ctx1.clearRect(0,0,338,214);

			var image = new Image();
			var img11 = new Image();
			image.onload = function() {
				
					ctx1.drawImage(image,0,0);
					ctx1.globalAlpha = 1;
					ctx1.drawImage(img11, 0, 0, 338,214);
				
				
			};
			image.src=imageData;
			img11=document.getElementById("overlay");
			

      });
        
        
        
        
        
        $('.save').click(function() {
			var imageData = $('.image-editor').cropit('export');

             var test=imageData;
             var array= test.match(/.{1,10000}/g);
             alert(array.length);
  			 /* var download = document.createElement('a');
			download.href = imageData;
			download.download = 'reddot.png';
			download.click(); */
 			document.getElementById('s1').value=array[0];
 			document.getElementById('s2').value=array[1];
 			document.getElementById('s3').value=array[2];
 			document.getElementById('s4').value=array[3];
 			document.getElementById('s5').value=array[4];
 			document.getElementById('s6').value=array[5];
 			document.getElementById('s7').value=array[6];
 			document.getElementById('s8').value=array[7];
 			document.getElementById('s9').value=array[8];
 			document.getElementById('s10').value=array[9]; 
 			document.getElementById('s11').value=array[10];
 			document.getElementById('s12').value=array[11];
 		 
 			document.getElementById('s13').value=array[12];
 			document.getElementById('s14').value=array[13];
 			document.getElementById('s15').value=array[14];
 			document.getElementById('s16').value=array[15];
 			document.getElementById('s17').value=array[16];
 			document.getElementById('s18').value=array[17];
 			document.getElementById('s19').value=array[18];
 			document.getElementById('s20').value=array[19]; 
 			document.getElementById('s21').value=array[20];
 			document.getElementById('s22').value=array[21];

			 

			
			
			
			
			
			/* var path=document.getElementById("abc").value;
			alert("hi"+document.getElementById("abc").value);
 			document.getElementById("some1").files[0]=path;
			 */
              
 			document.getElementById('imageform').submit();

      });
		 
      });
	  
	  
	  
    </script>
	<script type="text/javascript">
        function codeAddress() {
            var isOpera = (!!window.opr && !!opr.addons) || !!window.opera || navigator.userAgent.indexOf(' OPR/') >= 0;
    	    // Firefox 1.0+
	   var isFirefox = typeof InstallTrigger !== 'undefined';
    	// At least Safari 3+: "[object HTMLElementConstructor]"
	var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
    	// Internet Explorer 6-11
	var isIE = /*@cc_on!@*/false || !!document.documentMode;
    	// Edge 20+
	var isEdge = !isIE && !!window.StyleMedia;
    // Chrome 1+
	var isChrome = !!window.chrome && !!window.chrome.webstore;
    // Blink engine detection
	var isBlink = (isChrome || isOpera) && !!window.CSS;


     if(isOpera ){
                alert('Browser 1');
	}
  
    if(isFirefox ){
             alert('Firefox');
        }
    if(isSafari ){
            alert('Safari');
            var myCanvas = document.getElementById ( "myCanvas" );
            myCanvas.style.marginLeft = '0px';
            
            var adjustimage = document.getElementById ( "adjustimage" );
            adjustimage.style.marginLeft = '390px';
            
       }
    if(isIE){
            alert('Internet Explorer 1');
       }
    if(isChrome){
          alert('Google Chrome');
       } 
    if(isBlink){	
          alert('Blink 1');
          var myCanvas = document.getElementById ( "myCanvas" );
          myCanvas.style.marginLeft = '520px';
          
          var adjustimage = document.getElementById ( "adjustimage" );
          //adjustimage.style.marginLeft = '390px';
	}


        }
        window.onload = codeAddress;
        </script>
	
	 
  </body>
  
  
  
  <style>
  /* Basic Properties --------------------------------------------- */

body {
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #363636;
	line-height: 1.5em;
	background-color: transparent;
}

p {
	padding-bottom: 14px;
}
p.upload
{
	padding-bottom: 0px;
	width: 600px;
	margin-top:0px;
}
p.small
{
	padding-top: -20px;
	line-height: 90%;
}

img {
	border-width: 0px;
	border-style: none;
}

hr {
	border-top: 1px solid #7B88A4;
	height: 0px; /* Win IE fix */
}

em {
	font-weight: bold;
	font-style: normal;
	color: black;
}


/* Page Elements --------------------------------------------- */

#page {
	margin: 0 auto;
	padding: 0 10px;
}

#content {
	width: 750px;
	margin: 23px 0px -22px 129px;
        padding: 57px;
}

#content_main {
	width: 630px;
    margin: 0px;
    padding: 0px 60px;
    background: url(../images/main_bg.png);
    height: 377px;
    margin-left: -190px;
    margin-top: -183px;
    position: absolute;
	z-index: 3;
}

#content_bottom {
	width: 750px;
	margin: 0 0 0 1px;
	padding: 0;
	height: 17px;
	background: url(../images/main_bottom_bg.png) top no-repeat;
	margin-top: 181px;
    margin-left: -123px;
	    visibility: hidden;
}

#flash {
	width: 750px;
	height: 450px;
	margin: 0px;
	padding: 0px;
}


/* ------------ Tab ------------ */

#content_tab {
	margin: 0px;
	padding: 0;
	width: 750px;
}

#tab_top {
	margin: 0;
	padding: 0 0 0 69px;
	background: url(../images/tab_top_bg.png) bottom no-repeat;
	height: 35px;
	margin-left: -343px;
    margin-top: 3px;
    top: 46px;
    width: 982px;
    
    position: absolute;
}

#tab_middle {
    clear: both;
    margin: 81px;
    padding: 0;
    background: url(images/tab_middle_bg.png) no-repeat;
    height: 60px;
    margin-left: 286px;
	margin-top: -81px;
}
#tab_bottom {
	
    margin: 120px;
    padding: 30px;
    background: url(../images/tab_bottom_bg.png) top no-repeat;
    height: 18px;
    width: 693px;
    margin-left: -192px
}

#tab_design {
	float: left;
	height: 30px;
	width: 222px;
	text-align: center;
}

#tab_upload {
	float: left;
	height: 30px;
	width: 222px;
	text-align: center;
}

#ssg_logo {
	float: right;
	width: 112px;
}

#tab_back {
	float: left;
	padding: 0 0 0 6px;
}

#tab_uploadform, #tab_verifyform {
	float: left;
	padding: 0px 0 0 30px;
}

.active_tab {
	font-size: 15px;
	font-weight: 600;
	padding: 8px 0 0 0;
	margin: 0;
	background: url(../images/tab_active_bg.png) no-repeat;
}

.active_tab a {
	color: #000000;
}

.inactive_tab {
	color: #cccccc;
	font-size: 14px;
	font-weight: normal;
	padding: 8px 0 0 0;
	margin: 0;
	background: url(../images/tab_inactive_bg.png) no-repeat;
}

.inactive_tab a {
	color: #363636;
}

#lbTabBack
{
	padding-left:20px;
	font-weight:bold;
	font-size:11px;
}

/* Email Capture ----------------------------*/

#verifyContainer
{
	width:650px;
	height:285px;
	overflow-x:hidden;
	overflow-y:auto;
}

#dCompetitionCapture
{
	margin:10px 0;
}

#divTermsAndConditions
{
	height:30px;
}


#dEmailCapture
{
	width:410px;
	margin:10px 0;
}

#tab_verifyFormContent
{
	width:603px;
}

#lbVerifyFormText
{
	float:left;
	width:400px;
	margin-top:15px;
}

#btSubmit {
	background-image:url(../images/bt_submit.png);
	background-repeat:no-repeat;
	background-position:top center;
	height:35px;
	width:140px;
	border: none;
	font-size:12px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight:bold;
	color:Black;

	float:right;
	margin-top:15px;
	cursor:pointer;
}


#competitionCapture
{
    clear:both;
}

/* Custom data capture --------------------------------- */

.DataCaptureControl_Table
{
	width:630px;
}

.DataCaptureControl_Table tr, .DataCaptureControl_Table td
{
	height:20px;
	padding:0;
	margin:0;
}

#dValidationMessages
{
	margin:10px 0 0;
}

.NumericInputBox
{
}

.MandatoryMarker
{
    margin-left:5px;
}

.OutlinedBox
{
	border:solid 1px red;	
}

.MandatoryMarker_Highlighted
{
    margin-left:5px;
    color:red;
}

.LabelColumn  
{
    width:220px;
}

.ControlColumn  
{
    width:300px;
	text-align:left;
}

/* Anchors --------------------------------------------- */

a {
	color: #24418f;
	text-decoration: none;
}

/* Character Styles --------------------------------------------- */

cite {
	font-weight: normal;
	font-style: italic;
	color: #666666;
}

#btnUpload {
	width: 80px;
	height: 25px;
}

#filUploadedImage {
	height: 25px;
}

/* Headings --------------------------------------------- */

h1 {
	color: #000000;
	font-size: 20px;
	font-weight: normal;
}

#content_tab h1 {
	font-size: 18px;
	font-weight: normal;
	padding: 8px 0 0 0;
	margin: 0;
}

h2 {
	color: #000000;
	font-size: 18px;
	font-weight: normal;
}

h3 {
	color: #24418f;
	font-size: 14px;
	font-weight: bold;
	margin: 0px;
}

h4 {
	color: black;
	font-size: 14px;
	font-weight: normal;
	margin: 0px;
}

.ErrorMessage {
	color: red;
}

/* Basic List --------------------------------------------- */

ul, ol {
	margin: 0;
	padding: 0 0 0 15px;
}

li {
	padding: 0px;
	margin-bottom: 5px;
}

li ul {
	margin-top: 8px;
	margin-bottom: 0px;
	padding-bottom: 4px;
}


/* --------Demo Terms and Conditions ------------ */

#dTermsAndConditions
{
	position:absolute;
	top:150px;
	left:150px;
	width:450px;
}

#dTermsAndConditions div
{
	padding:10px;
	font-size:10pt;
	background-color:#fff;
	border:solid 1px #ccc;
}

#dTsAndCsOverlay
{
	height:100%;
	width:100%;
	position:absolute;
	left:0;
	top:0;
}

#dTermsAndConditions div #closeAnchor
{
	float:right;
}
#dTermsAndConditions div h3
{
	float:left;
}

#dTermsAndConditions div hr
{
	clear:both;
}

#dTsAndCsOverlay #OverLay
{
	background-color:#000;
	height:100%;
	width:100%;
	top:0;
	left:0;
	-moz-opacity:.50; 
	filter:alpha(opacity=50); 
	opacity:.50;
}


  
  </style>
  
  
  <script>
  
  </script>
  
  
</html>
