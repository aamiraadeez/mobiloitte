package com.m3.dao;

import java.util.List;
import java.util.Map;

import com.m3.model.UserModel;

public interface UserDao {

	int checkEmailAlreadyExist(String email);

	String getPasswordByEmail(String email);

	Object getProfileByEmail(String email);

	int addProfile(UserModel user);

	int addProfileWithoutImage(UserModel user);

	List<Map<String, Object>> getallProfile();

	List<Map<String, Object>> getalluser();

	int deleteProfile(Long id);

	Map<String, Object> getProfileById(String id);

	int updateProfile(UserModel user);

	int updateProfileWithoutImage(UserModel user);

	Map<String, Object> validateData(UserModel user);

	String getEmailCount(UserModel user);

	int getCount(UserModel user);

	List<Map<String, Object>> getProfileByPage(int page_id, int total);

	String isProfileValidate(UserModel user);

	String getEmailCountAjax(String email);

	int getChartData();

	int getProfileCount();

}
