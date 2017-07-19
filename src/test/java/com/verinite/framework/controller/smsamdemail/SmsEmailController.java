package com.verinite.framework.controller.smsamdemail;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.verinite.framework.dao.serviceloginform.LoginDaoImpl;
import com.verinite.framework.dto.smsgateway.Fwchannel;
import com.verinite.framework.helpers.EmailGateway.NewGatewaySetupEmailServiceClass;
import com.verinite.framework.helpers.smsgateway.NewGatewaySetupSmsServiceClass;
import com.verinite.framework.restservice.client.emailGateway.generated.EmailGatewayserviceInput;
import com.verinite.framework.restservice.client.emailGateway.generated.EmailGatewayserviceOutput;

@Controller
@RequestMapping(value = "/forms/*")
public class SmsEmailController {
	boolean flagb=false;
	boolean flagc=false;
	boolean flagd=false;
	boolean flage=false;
	boolean flagf=false;
	boolean flagg=false;
	boolean flagh=false;
	boolean flagj=false;
	boolean flagi=false;
	boolean flag3=false;
	public int count=0;
	public int NewUserVariable=0;
	public String UserName1;
	public Integer CompanyId1;
	public Boolean flag=false;
	public Boolean flag1=false;
	public Boolean flag2=false;
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
	public int CompId;
	public Boolean flagi5=false;
	public Boolean flag123=false;
	public int companyid;
	public String hashvalue1;
	public boolean flag29=false;
	public Boolean flag133=false;
	int company_id=0;
	String Channel_code="1";
	String channel_name="1";
	String username="jamgaonkar3";

	//@Autowired
	//public LoginServiceInterface service;
	//@Autowired
	//ErrorCountServiceInterface serviceupdate;
	//@Autowired
	//NewUserDataService servicenuser;
	//@Autowired
	//forgotpasswordverification serviceuserpassword;
	
	//ApplicationContext Context=new ClassPathXmlApplicationContext("emailgateway.xml");
	//NewGatewaySetupEmailServiceClass gatewayemailservice=(NewGatewaySetupEmailServiceClass)Context.getBean("gatewayemailservice");
	//ApplicationContext Context2=new ClassPathXmlApplicationContext("smsgateway.xml");
	//NewGatewaySetupSmsServiceClass gatewaysmsservice=(NewGatewaySetupSmsServiceClass)Context2.getBean("gatewaysmsservice");
	
	@RequestMapping("channel-setup")
	public String getUploadForm(Model model) {
		model.addAttribute("channel-setup",new Fwchannel());
		if(flagb){
			model.addAttribute("message","Enter Valid Channel Code");
		}
		if(flagc){
			model.addAttribute("message","Enter Valid Channel Name");
		}
		if(flagd){
			model.addAttribute("message","Enter Valid Gateway Id");
		}
		if(flage){
			model.addAttribute("message","Enter Valid Gateway Name");
		}
		if(flagf){
			model.addAttribute("message","Enter Valid Ip/port ");
		}
		if(flagg){
			model.addAttribute("message","Enter Valid sender Id");
		}
		if(flagj){
			model.addAttribute("message","Enter Valid username companyid not found");
		}
		System.out.println("Loading Page");
		return "channel-setup";
	}
	
	

	
	@RequestMapping("smsemaildata")
	public String getsmsemaildata(@RequestParam("channel_GatewayId") String channel_GatewayId,@RequestParam("Channel_Gatewayname") String Channel_Gatewayname,@RequestParam("Channel_ip_port") String Channel_ip_port,@RequestParam("channel_senderid") String Channel_senderid,@RequestParam("password") String password,@RequestParam("apicode") String apicode){	
				System.out.println("_________________________________________________Sms_______________________________________");
				flag3=true;
				 Channel_code="sms";
				 channel_name="smsData";
				
				System.out.println("length ---------------------->"+Channel_code.length());
				if(Channel_code.length()>3 || Channel_code.length()<1){
					System.out.println("1");
					flagb=true;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagf=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel Code Null");
					return "redirect:channel-setup";
					
				}
				else if(channel_name.length()<1){
					System.out.println("2");
					flagc=true;
					flagb=false;
				    flagd=false;
				    flage=false;
				    flagf=false;
				    flagg=false;
				    flagh=false;
				    flagi=false;
				    flagj=false;
					  System.out.println("Channel Name _Null");
				    return "redirect:channel-setup";
					
				}
				else if(channel_GatewayId.length()<1){
					System.out.println("3");
					flagd=true;
					  flagb=false;
					  flagc=false;
					  flage=false;
					  flagf=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel GatewayId _Null");
					  return "redirect:channel-setup";
					
				}
				
				else if(Channel_Gatewayname.length()<1){
					System.out.println("4");
					flage=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flagf=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel Gateway Name _Null");
					  return "redirect:channel-setup";
					
				}
				else if(Channel_ip_port.length()<1){
					System.out.println("5");
					flagf=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("IP Port Number _Null");
					  return "redirect:channel-setup";
					
				}
				else if(Channel_senderid.length()<1){
					System.out.println("6");
					flagg=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagf=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Sender Id _ Null");
					  return "redirect:channel-setup";
					
				}
				
				
				else if(apicode.length()<1){
					System.out.println("7");
					flagh=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagf=false;
					  flagg=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Aapi Code Null");
					  return "redirect:channel-setup";
					
				}
				
				
				else{
				
					System.out.println(Channel_code);
					System.out.println(channel_name);
					System.out.println(channel_GatewayId);
					System.out.println(Channel_Gatewayname);
					System.out.println(Channel_ip_port);
					System.out.println(Channel_senderid);
					System.out.println(apicode);
					ApplicationContext Context2=new ClassPathXmlApplicationContext("DaoConfignew.xml");
					LoginDaoImpl abc2=(LoginDaoImpl)Context2.getBean("daonew");
				//	String comp=abc2.getCompanyidForUser(username); 
					String comp="105";
					System.out.println("------------------------------------------------------"+comp);//here we have to change it to a valid username from login form we will take it as input;
					try
					{
				     company_id=Integer.parseInt(comp);
					}
					catch(Exception e){
						flagj=true;
						return "redirect:channel-setup";
					}
					ApplicationContext Context31=new ClassPathXmlApplicationContext("smsgateway.xml");
					NewGatewaySetupSmsServiceClass gatewaysmsservice=(NewGatewaySetupSmsServiceClass)Context31.getBean("gatewaysmsservice");
				
					gatewaysmsservice.SmsGatewaySetupService(Channel_code, channel_name, channel_GatewayId, Channel_Gatewayname, Channel_ip_port,Channel_senderid, "", "",company_id,password,apicode);
					return "redirect:channel-setup";
			}
			
			
		
		}

	@JsonProperty("wrapper")
	@JsonIgnoreProperties(ignoreUnknown = true)
	@RequestMapping("emaildata")
	public String getemaildata(@RequestParam("channel_GatewayId") String channel_GatewayId,@RequestParam("Channel_Gatewayname") String Channel_Gatewayname,@RequestParam("Channel_ip_port") String Channel_ip_port,@RequestParam("channel_senderid") String Channel_senderid,@RequestParam("password") String password){
				System.out.println("____________________________________Email________________________________");
				Channel_code="eml";
				channel_name="emlName";
				
				flag3=true;
				System.out.println("length ---------------------->"+Channel_code.length());
			//	System.out.println("_____________________------------=============----------------____________"+channel_shortcode);
				if(Channel_code.length()>3 || Channel_code.length()<1){
					System.out.println("1");
					flagb=true;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagf=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					return "redirect:channel-setup";
					
				}
				else if(channel_name.length()<1){
					System.out.println("2");
					flagc=true;
					flagb=false;
				    flagd=false;
				    flage=false;
				    flagf=false;
				    flagg=false;
				    flagh=false;
				    flagi=false;
				    flagj=false;
					  System.out.println("Channel Name Null");
				    return "redirect:channel-setup";
					
				}
				else if(channel_GatewayId.length()<1){
					System.out.println("3");
					flagd=true;
					  flagb=false;
					  flagc=false;
					  flage=false;
					  flagf=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel GatewayId Null");
					  return "redirect:channel-setup";
					
				}
				
				else if(Channel_Gatewayname.length()<1){
					System.out.println("4");
					flage=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flagf=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel GatewayName Null");
					  return "redirect:channel-setup";
					
				}
				else if(Channel_ip_port.length()<1){
					System.out.println("5");
					flagf=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagg=false;
					  flagh=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel Ip Port Null");
					  return "redirect:channel-setup";
					
				}
				
				
				else if(Channel_senderid.length()<1){
					System.out.println("7");
					flagh=true;
					  flagb=false;
					  flagc=false;
					  flagd=false;
					  flage=false;
					  flagf=false;
					  flagg=false;
					  flagi=false;
					  flagj=false;
					  System.out.println("Channel Sender Id Null");
					  return "redirect:channel-setup";
					
				}
				
				
				else{
				
					System.out.println(Channel_code);
					System.out.println(channel_name);
					System.out.println(channel_GatewayId);
					System.out.println(Channel_Gatewayname);
					System.out.println(Channel_ip_port);
					System.out.println(Channel_senderid);
					ApplicationContext Context2=new ClassPathXmlApplicationContext("DaoConfignew.xml");
					LoginDaoImpl abc2=(LoginDaoImpl)Context2.getBean("daonew");
					//String comp=abc2.getCompanyidForUser(username);    //here we have to change it to a valid username from login form we will take it as input;
					String comp="105";
					System.out.println("------------------------------------------------------"+comp);
					try
					{
				     company_id=Integer.parseInt(comp);
					}
					catch(Exception e){
						flagj=true;
						return "redirect:channel-setup";
					}
				//	ApplicationContext Context3=new ClassPathXmlApplicationContext("emailgateway.xml");
				//	NewGatewaySetupEmailServiceClass gatewayemailservice=(NewGatewaySetupEmailServiceClass)Context3.getBean("gatewayemailservice");
					System.out.println("1");
					EmailGatewayserviceInput request = new EmailGatewayserviceInput();
					System.out.println("2");
					request.setChannelCode(Channel_code);
					request.setChannelName(channel_name);
					request.setChannelGatewayId(channel_GatewayId);
					request.setChannelGatewayname(Channel_Gatewayname);
					request.setChannelIpPort(Channel_ip_port);
					request.setChannelSenderid(Channel_senderid);
					String company_idstr=company_id+"";
					request.setCOMPANYID(company_idstr);
					request.setPassword(password);
					System.out.println("3");
					Client client = ClientBuilder.newClient();//http://localhost:8085/pyd-framework-webapp/application.wadl
					System.out.println("4");
					WebTarget target = client.target("http://localhost:8085/pyd-framework-webapp/EmailGatewayWS/emailgatewaysetup");
					System.out.println("5");
					System.out.println("target.getUri() = " + target.getUri());
					ObjectMapper objectMapper = new ObjectMapper();
					objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
					Response response = target.request(MediaType.APPLICATION_JSON_TYPE).buildPost(Entity.entity(request, MediaType.APPLICATION_JSON)).invoke();
					System.out.println("6");
					System.out.println(response.getMediaType());
					Builder res=target.request().accept(MediaType.APPLICATION_JSON);
					System.out.println(response.getStatus());
					System.out.println("response.getStatusInfo().getStatusCode() = " + response.getStatusInfo().getStatusCode());
					
					
					
					
					EmailGatewayserviceOutput output = response.readEntity(EmailGatewayserviceOutput.class);
					System.out.println(output.getOutput());
					System.out.println(	output.getErrorMessageSmsGateway());
					System.out.println("Output");
				//	RestClientAAS p=new RestClientAAS();
				//	p.invokeAASService();
				//	gatewayemailservice.EmailGatewaySetupService(Channel_code, channel_name, channel_GatewayId, Channel_Gatewayname, Channel_ip_port, Channel_senderid,company_id,password);
					return "redirect:channel-setup";
		
				}
			}
	

	
}
