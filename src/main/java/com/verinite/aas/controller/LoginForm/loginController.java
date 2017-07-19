package com.verinite.aas.controller.LoginForm;


import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import com.journaldev.spring.controller.SelfieDomain;

import Decoder.BASE64Decoder;


@Controller
@RequestMapping("/login/*")
public class loginController
{	 private static final String UPLOAD_DIRECTORY ="/images";
	public Boolean flag=false;
	public Boolean flag1=false;
	public Boolean flag2=false;
	public Boolean flag3=false;
	public Boolean flag4=false;
	public Boolean flag5=false;
	public Boolean flag6=false;
	public Boolean flag7=false;
	public Boolean flag8=false;
	public Boolean flag9=false;
	public boolean flag10=false;
	public boolean flagi7=false;
	public String question;
	public Boolean flagnew=false;
	public String UserN;
	public Long CompId;
	public Boolean flagi5=false;
	public Boolean flag123=false;
	public Long companyid;
	public String hashvalue1;
	public boolean flag29=false;
	public Boolean flag133=false;
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/STUDENTS";
	   static final String USER = "root";
	   static final String PASS = "password";
//	ApplicationContext Context=new ClassPathXmlApplicationContext("DaoConfignew.xml");
//	UserAuthenticationService service=(UserAuthenticationService) Context.getBean("service");
//	NewUserDataServiceclass servicenuser=(NewUserDataServiceclass) Context.getBean("servicenuser");
//	ErrorCountServiceInterface serviceupdate=(ErrorCountServiceInterface) Context.getBean("serviceupdate");
//	forgotPasswordVerificationClass serviceuserpassword=(forgotPasswordVerificationClass) Context.getBean("serviceuserpassword");
	//@Autowired
	//public LoginServiceInterface service;
	//@Autowired
	//ErrorCountServiceInterface serviceupdate;
	//@Autowired
	//NewUserDataService servicenuser;
	//@Autowired
	//forgotpasswordverification serviceuserpassword;
		
		public int count=0;
		public int NewUserVariable=0;
		public String UserName1;
		public Long CompanyId1;
		
		
		@RequestMapping("loginform")
		public String showForm(Model model) {
			System.out.println("============================");			
			model.addAttribute("loginForm",new SelfieDomain());
			//flag=false;
			
			model.addAttribute("message","How Are You !");
			return "loginform";
		}
	
		
		@RequestMapping("logindetails")
		public String doLogin(@RequestParam("hoTen") String username, @RequestParam("MaKhachHang") String password,@RequestParam("cmndTcc") String companyid,@RequestParam("soDienThoai") String soDienThoai,@RequestParam("daiChiEmail") String daiChiEmail,@RequestParam("loaiThe") String loaiThe)
		{	
			System.out.println("Hoten "+username);
			System.out.println("password "+password);
			System.out.println("cmndTcc "+companyid);
			System.out.println("soDienThoai "+soDienThoai);
			//daiChiEmail//loaiThe
			System.out.println("daiChiEmail "+daiChiEmail);
			System.out.println("loaiThe "+loaiThe);
			
			return "redirect:imagebackground";
		}

		
		@RequestMapping("imagebackground")
		public String imagebackground(Model model){		
				model.addAttribute("image",new SelfieDomain());
			return "image-background";
	}
		
		
		@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
		public @ResponseBody
		void uploadFileHandler(@RequestParam("imageData1") String imageData1,@RequestParam("imageData2") String imageData2,@RequestParam("imageData3") String imageData3,@RequestParam("imageData4") String imageData4,@RequestParam("imageData5") String imageData5,@RequestParam("imageData6") String imageData6,@RequestParam("imageData7") String imageData7,@RequestParam("imageData8") String imageData8,@RequestParam("imageData9") String imageData9,@RequestParam("imageData10") String imageData10,@RequestParam("imageData11") String imageData11,@RequestParam("imageData12") String imageData12,@RequestParam("imageData13") String imageData13,@RequestParam("imageData14") String imageData14,@RequestParam("imageData15") String imageData15,@RequestParam("imageData16") String imageData16,@RequestParam("imageData17") String imageData17,@RequestParam("imageData18") String imageData18,@RequestParam("imageData19") String imageData19,@RequestParam("imageData20") String imageData20,@RequestParam("imageData21") String imageData21,@RequestParam("imageData22") String imageData22,Model model,@RequestParam("fileData") MultipartFile file,HttpSession session) {

	 			try {
					 
	 				
	 				BASE64Decoder decoder = new BASE64Decoder();
	 		       String imageDataBytes = imageData1.substring(imageData1.indexOf(",")+1);
	 		       
	 		       String original=imageDataBytes+imageData2+imageData3+imageData4+imageData5+imageData6+imageData7+imageData8+imageData9+imageData10+imageData11+imageData12+imageData13+imageData14+imageData15+imageData16+imageData17+imageData18+imageData19+imageData20+imageData21+imageData22;;
	  				
	 				byte[] decodedBytes=decoder.decodeBuffer(original);
	 				 
	  		           
	 		         String uploadFile = "D:/selfie image/test.png";
	 		  
	 		         BufferedImage image = ImageIO.read(new ByteArrayInputStream(decodedBytes));
	 		         if (image == null) {
	 		           }
	 		         File f = new File(uploadFile);
	 		 
	 		           ImageIO.write(image, "png", f);
	 		     
	               send(f.getName());
	 
	 			} catch (Exception e) {
	 			}
			 
		}

		public  void send (String fileName) {
			 
			 String SFTPHOST = "demo.wftpserver.com";
		     int SFTPPORT = 2222;
		     String SFTPUSER = "demo-user";
		     String SFTPPASS = "demo-user";
		     String SFTPWORKINGDIR = "upload";

		     Session session = null;
		     Channel channel = null;
		     ChannelSftp channelSftp = null;
		     System.out.println("preparing the host information for sftp.");
		     try {
		         JSch jsch = new JSch();
		         session = jsch.getSession(SFTPUSER, SFTPHOST, SFTPPORT);
		         session.setPassword(SFTPPASS);
		         java.util.Properties config = new java.util.Properties();
		         config.put("StrictHostKeyChecking", "no");
		         session.setConfig(config);
		         session.connect();
		         System.out.println("Host connected.");
		         channel = session.openChannel("sftp");
		         channel.connect();
		         System.out.println("sftp channel opened and connected.");
		         channelSftp = (ChannelSftp) channel;
		         channelSftp.cd(SFTPWORKINGDIR);
		         File f = new File("D:/selfie image/test.jpg");
		         channelSftp.put(new FileInputStream(f), f.getName());
		         //log.info("File transfered successfully to host.");
		     } catch (Exception ex) {
		          System.out.println("Exception found while tranfer the response.");
		     }
		     finally{

		         channelSftp.exit();
		         System.out.println("sftp Channel exited.");
		         channel.disconnect();
		         System.out.println("Channel disconnected.");
		         session.disconnect();
		         System.out.println("Host Session disconnected.");
		     }
		 
		  
	}   
		@RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST)
		public @ResponseBody
		String uploadMultipleFileHandler(
				@RequestParam("file") MultipartFile[] files) {

			 

			String message = "";
			for (int i = 0; i < files.length; i++) { }
			return message;
		}

		public void checkDataBase(){
			
			   
			  
			   Connection conn = null;
			   Statement stmt = null;
			   try{
			      //STEP 2: Register JDBC driver
			      Class.forName("com.mysql.jdbc.Driver");

			      //STEP 3: Open a connection
			      System.out.println("Connecting to a selected database...");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      System.out.println("Connected database successfully...");
			      
			      //STEP 4: Execute a query
			      System.out.println("Creating statement...");
			      stmt = conn.createStatement();

			      String sql = "SELECT id, first, last, age FROM Registration";
			      ResultSet rs = stmt.executeQuery(sql);
			      //STEP 5: Extract data from result set
			      while(rs.next()){
			         //Retrieve by column name
			         int id  = rs.getInt("id");
			         int age = rs.getInt("age");
			         String first = rs.getString("first");
			         String last = rs.getString("last");

			         //Display values
			         System.out.print("ID: " + id);
			         System.out.print(", Age: " + age);
			         System.out.print(", First: " + first);
			         System.out.println(", Last: " + last);
			      }
			      rs.close();
			   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   }finally{
			      //finally block used to close resources
			      try{
			         if(stmt!=null)
			            conn.close();
			      }catch(SQLException se){
			      }// do nothing
			      try{
			         if(conn!=null)
			            conn.close();
			      }catch(SQLException se){
			         se.printStackTrace();
			      }//end finally try
			   }//end try
		}
		
		
}


 
