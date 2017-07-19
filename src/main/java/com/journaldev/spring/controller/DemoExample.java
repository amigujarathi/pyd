package com.journaldev.spring.controller;

import java.io.File;
import java.io.FileInputStream;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

public class DemoExample {
 
  
 public static void main(String[] args) {
 
	 String SFTPHOST = "49.248.35.50";
     int SFTPPORT = 21;
     String SFTPUSER = "test";
     String SFTPPASS = "test";
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
 
  
}}