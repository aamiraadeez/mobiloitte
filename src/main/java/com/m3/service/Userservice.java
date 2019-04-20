package com.m3.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.m3.model.UserModel;

public interface Userservice {
	Map<String, Object> addProfile(UserModel user) throws IOException;

	Object getProfileByEmail(String email);

	Object getallProfile();

	int deleteProfile(Long id);

	Map<String, Object> getProfileById(String id);

	int updateProfile(UserModel user) throws IOException;

	String trysessionLogin(UserModel user);

	String getEmailCount(UserModel user);

	List<Map<String, Object>> getalluser();

	List<Map<String, Object>> getProfileByPage(int page_id, int total);

	int getProfileCount(UserModel user);

	Object isProfileValid(UserModel user);

}
