package com.m3.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.m3.model.UserModel;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public int addProfile(UserModel user) {
		String sql = "INSERT INTO m3 (role ,firstName, lastName, email, password ,confirmPassword, gender, address, phoneNumber, maritalStatus , salary ,datePicker , imgUrl) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, user.getRole(), user.getFirstName(), user.getLastName(), user.getEmail(),
				user.getPassword(), user.getConfirmPassword(), user.getGender(), user.getAddress(),
				user.getPhoneNumber(), user.getMaritalStatus(), user.getSalary(), user.getDatePicker(),
				user.getImgUrl());
	}

	@Override
	public int checkEmailAlreadyExist(String email) {
		return jdbcTemplate.queryForObject("select count(*) from m3 where email=?", Integer.class, email);
	}

	@Override
	public String getPasswordByEmail(String email) {
		return jdbcTemplate.queryForObject("select password from m3 where email=?", String.class, email);
	}

	@Override
	public Object getProfileByEmail(String email) {
		return jdbcTemplate.queryForMap(
				"select dashId, role,  firstName, lastName, email, password,confirmPassword , gender , address, phoneNumber , maritalStatus, salary,datePicker , imgUrl from m3 where email=?",
				email);
	}

	@Override
	public List<Map<String, Object>> getallProfile() {

		return jdbcTemplate.queryForList("SELECT * FROM m3");

	}

	@Override
	public int deleteProfile(Long id) {

		String save = "delete from m3 where dashId=?";
		return jdbcTemplate.update(save, id);

	}

	@Override
	public Map<String, Object> getProfileById(String id) {
		return jdbcTemplate.queryForMap(
				"select dashId,role,  firstName, lastName, email, password,confirmPassword,  gender, address, phoneNumber ,maritalStatus, salary, datePicker, imgUrl from m3 where dashId=?",
				id);
	}

	@Override
	public int updateProfile(UserModel user) {
		String sql = "update m3 set role=?, firstName=?,lastName=?, password=?,confirmPassword=?, gender= ? , address=?, phoneNumber=?, maritalStatus= ?, salary=?, datePicker=?, imgUrl=?  where email=?";
		return jdbcTemplate.update(sql, user.getRole(), user.getFirstName(), user.getLastName(), user.getPassword(),
				user.getConfirmPassword(), user.getGender(), user.getAddress(), user.getPhoneNumber(),
				user.getMaritalStatus(), user.getSalary(), user.getDatePicker(), user.getImgUrl(), user.getEmail());
	}

	@Override
	public Map<String, Object> validateData(UserModel user) {
		String sql = "select * from m3 where email=?";
		return jdbcTemplate.queryForMap(sql, user.getEmail());
	}
	
	@Override
	public String isProfileValidate(UserModel user) {
		String str = "Select password from m3 where email=?";
		return jdbcTemplate.queryForObject(str, String.class, user.getEmail());
	}

	@Override
	public String getEmailCount(UserModel user) {
		String sql = "select count(*) from m3 where email=?";
		return jdbcTemplate.queryForObject(sql, String.class, user.getEmail());
	}

	@Override
	public int getCount(UserModel user) {
		String sql = "select count(*) from m3 ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public List<Map<String, Object>> getProfileByPage(int page_id, int total) {
		String sql = "select * from m3 LIMIT " + (page_id - 1) + "," + total + "";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List<Map<String, Object>> getalluser() {
		String sql = "select * from m3";
		return jdbcTemplate.queryForList(sql);
	}
	
	


}