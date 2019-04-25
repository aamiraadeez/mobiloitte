package com.m3.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.m3.dao.UserDao;
import com.m3.model.UserModel;

@Service
public class UserServiceImpl implements Userservice {

	@Autowired
	private JavaMailSender sender;

	@Value("${file.upload-path}")
	private String folderPath;

	@Autowired
	UserDao dao;

	@Override
	public Map<String, Object> addProfile(UserModel user) throws IOException {
		Map<String, Object> response = new HashMap<>();
		if (user.getMultipartimage().isEmpty()) {
			int result = dao.addProfileWithoutImage(user);
			if (result > 0) {
				response.put("200", "Success");
			} else {
				response.put("204", "Failed");
			}
			return response;
		} else {
			String fileName = StringUtils.cleanPath(user.getMultipartimage().getOriginalFilename());
			Path path = Paths.get(folderPath + fileName);
			long copy = Files.copy(user.getMultipartimage().getInputStream(), path,
					StandardCopyOption.REPLACE_EXISTING);
			user.setImgUrl(fileName);
			int result = dao.addProfile(user);
			if (result > 0) {
				response.put("200", "Success");
			} else {
				response.put("204", "Failed");
			}
			return response;
		}
	}

	@Override
	public String trysessionLogin(UserModel user) {
		try {
			Map<String, Object> userdetail = dao.validateData(user);
			String password = (String) userdetail.get("password");
			if (password.equals(user.getPassword())) {
				return "200";
			} else {
				return "201";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "202";
	}

//	@Override
//	public int loginValidation(UserModel user) {
//		// TODO Auto-generated method stub
//
//		int result = dao.checkEmailAlreadyExist(user.getEmail());
//		if (result > 0) {
//			// Password validate
//			String password = dao.getPasswordByEmail(user.getEmail());
//
//			if (password.equals(user.getPassword())) {
//				// success
//				return 200;
//			} else
//				// password not match
//				return 201;
//		} else {
//			// email not exist
//			return 404;
//		}
//
//	}

	@Override
	public Object getProfileByEmail(String email) {

		return dao.getProfileByEmail(email);
	}

	@Override
	public List<Map<String, Object>> getallProfile() {

		return dao.getallProfile();
	}

	@Override
	public int deleteProfile(Long id) {
		// TODO Auto-generated method stub
		return dao.deleteProfile(id);
	}

	@Override
	public Map<String, Object> getProfileById(String id) {
		return dao.getProfileById(id);
	}

	@Override
	public int updateProfile(UserModel user) throws IOException {
		if(user.getMultipartimage().isEmpty())
		{
			return dao.updateProfileWithoutImage(user);
		}
		else
		{
		String fileName = StringUtils.cleanPath(user.getMultipartimage().getOriginalFilename());
		Path path = Paths.get(folderPath + fileName);
		long copy = Files.copy(user.getMultipartimage().getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		user.setImgUrl(fileName);

		return dao.updateProfile(user);
	}
		}

	@Override
	public String getEmailCount(UserModel user) {
		return dao.getEmailCount(user);
	}
	
	@Override
	public String getEmailCountAjax(String email) {
		return dao.getEmailCountAjax(email);
		}
	
	@Override
	public int getProfileCount(UserModel user) {
		// TODO Auto-generated method stub
		return dao.getCount(user);
	}

	@Override
	public List<Map<String, Object>> getProfileByPage(int page_id, int total) {
		// TODO Auto-generated method stub
		return dao.getProfileByPage(page_id, total);
	}

	@Override
	public List<Map<String, Object>> getalluser() {
		return dao.getalluser();

	}

	@Override
	public String isProfileValid(UserModel user) {
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		try {
			helper.setTo(user.getEmail());
			helper.setText("Your Password is : " + dao.isProfileValidate(user));
			helper.setSubject("Mail From Spring Boot");
		} catch (MessagingException e) {
			e.printStackTrace();
			return "Error while sending mail ..";
		}
		sender.send(message);
		return "message sent";
	}

	@Override
	public int getChartData() {
		return dao.getChartData();
	}

	@Override
	public int getProfileCount() {
		return dao.getProfileCount();
	}

	
	

}
