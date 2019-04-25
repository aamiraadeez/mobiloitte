
package com.m3;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import com.sendgrid.Content;
import com.sendgrid.Email;
import com.sendgrid.Mail;
import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;

/**
 * @author administrator
 *
 */
public class Sendgrid {

	static Response response = new Response();

	public static void main(String[] args) throws IOException {
		String subject = "Test email";
		String emailTo = "faizanali263@gmail.com";
		String cont = " hum ho chuityahai or tum or bde chutiya ho jo ss txt ko pdh rhe ho  smje , or call kro urgent h";

		Map<String, Object> response = sendMail(subject, emailTo, cont);
		System.out.println("Result: " + response);

	}

	public static Map<String, Object> sendMail(String sub, String emailTo, String cont) throws IOException {
		Email from = new Email("sazidmohd738@gmail.com");
		Email to = new Email(emailTo);
		Content content = new Content("text/plain", cont);
		Mail mail = new Mail(from, sub, to, content);

//	    SendGrid sg = new SendGrid(System.getenv("SENDGRID_API_KEY"));
		SendGrid sg = new SendGrid("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");
		Request request = new Request();
		Map<String, Object> map = new HashMap<>();
		try {
			request.setMethod(Method.POST);
			request.setEndpoint("mail/send");
			request.setBody(mail.build());
			response = sg.api(request);
			System.out.println((response).getStatusCode());
			System.out.println((response).getBody());
			System.out.println((response).getHeaders());
			map.put("responseCode", (response).getStatusCode());
		} catch (IOException ex) {
//	      throw ex;
			map.put("responseCode", ex);
		}
		return map;
	}
}
