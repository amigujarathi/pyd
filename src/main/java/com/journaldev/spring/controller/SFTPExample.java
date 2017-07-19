package com.journaldev.spring.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;
 
import org.apache.commons.vfs2.FileObject;
import org.apache.commons.vfs2.FileSystemOptions;
import org.apache.commons.vfs2.Selectors;
import org.apache.commons.vfs2.impl.StandardFileSystemManager;
import org.apache.commons.vfs2.provider.sftp.SftpFileSystemConfigBuilder;
 
public class SFTPExample {
 
 static Properties props;
 
 public static void main(String[] args) {
 
  SFTPExample sendMyFiles = new SFTPExample();
   
 
   String fileToFTP = "test.jpg";
  sendMyFiles.startFTP(fileToFTP);
 
 }
 
 public boolean startFTP(String fileToFTP){
 
   StandardFileSystemManager manager = new StandardFileSystemManager();
 
  try {
 
    String serverAddress ="48.248.35.50" ;//props.getProperty("serverAddress").trim();
   String userId ="Dev"; //props.getProperty("userId").trim();
   String password ="V3r1n1t3@123"; //props.getProperty("password").trim();
   String remoteDirectory = "";//props.getProperty("remoteDirectory").trim();
   String localDirectory = "D:/selfie image/";//props.getProperty("localDirectory").trim();
 
   //check if the file exists
   String filepath = localDirectory +  fileToFTP;
   File file = new File(filepath);
   if (!file.exists())
    throw new RuntimeException("Error. Local file not found");
 
   //Initializes the file manager
   manager.init();
    
   //Setup our SFTP configuration
   FileSystemOptions opts = new FileSystemOptions();
   SftpFileSystemConfigBuilder.getInstance().setStrictHostKeyChecking(opts, "no");
   SftpFileSystemConfigBuilder.getInstance().setUserDirIsRoot(opts, true);
   SftpFileSystemConfigBuilder.getInstance().setTimeout(opts, 10000);
    
   //Create the SFTP URI using the host name, userid, password,  remote path and file name
   String sftpUri = "sftp://" + userId + ":" + password +  "@" + serverAddress + "/" + 
     remoteDirectory + fileToFTP;
    
   // Create local file object
   FileObject localFile = manager.resolveFile(file.getAbsolutePath());
 
   // Create remote file object
   FileObject remoteFile = manager.resolveFile(sftpUri, opts);
 
   // Copy local file to sftp server
   remoteFile.copyFrom(localFile, Selectors.SELECT_SELF);
   System.out.println("File upload successful");
 
  }
  catch (Exception ex) {
   ex.printStackTrace();
   return false;
  }
  finally {
   manager.close();
  }
 
  return true;
 }
 
  
}