<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="com.sun.mail.util.MailSSLSocketFactory"%>
<%@ page import="java.io.IOException"%>
<%@page import=" java.sql.ResultSet"%>
<%@ page import=" java.sql.Statement"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import=" javax.servlet.ServletException"%>
<%@ page import=" javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.* "%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%
    //Creating a result for getting status that messsage is delivered or not!
    String result="";
    		%><%String name=(String)request.getAttribute("Emailid"); %>
<% 
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    final String username = "vidya96ks@gmail.com";
    final String password = "vidya1996**";

        Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.host", host);
	props.put("mail.smtp.port", "465");
	props.put("mail.transport.protocol", "smtp");
	props.put("mail.smtp.starttls.enable", "true");
	 props.put("mail.smtp.socketFactory.port", "465");   
     props.put("mail.smtp.socketFactory.class",   
             "javax.net.ssl.SSLSocketFactory");   
     props.put("mail.smtp.socketFactory.fallback", "false");   
     props.setProperty("mail.smtp.quitwait", "false");   
	MailSSLSocketFactory sf = new MailSSLSocketFactory();
	sf.setTrustAllHosts(true);
	props.put("mail.imap.ssl.trust", "*");
	props.put("mail.imap.ssl.socketFactory", sf);
     Session session1 = Session.getInstance(props,
              new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
              });


    try {
    	//Long.toHexString(Double.doubleToLongBits(Math.random()));
    	
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/dell", "root", "root");
String uuid=UUID.randomUUID().toString(); 

    	//RandomStringUtils.randomAlphanumeric(12);
        Transport transport=session1.getTransport();
        Message message = new MimeMessage(session1);
        message.setFrom(new InternetAddress(username));//formBean.getString("fromEmail")
        message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(name));
        message.setSubject("subject");//formBean.getString(
        message.setText("Your temporary password: "+uuid);
        transport.connect();
        transport.send(message, InternetAddress.parse(name));//(message);
		result = " send mail...";
		Statement st = con.createStatement();
		int a=0;
		a=st.executeUpdate("update register_vol set password='"+uuid+"' where email='"+name+"'");

        

    } catch (MessagingException e) {
        out.println("e="+e);
        e.printStackTrace();
        result = "Error: unable to send mail....";

    }
%>
<title>Sending Mail in JSP</title>
<h1><center><font color="blue">Sending Mail Using JSP</font></h1>
<b><center><font color="red"><% out.println(result);%></font></b>
<a href="login1.jsp"><input type="button" style="font-family: 'Aharoni'; font-size: larger; color: blue; background-color: #FFFFC0; border: 3pt ridge lightgrey"  value="continue"></a>