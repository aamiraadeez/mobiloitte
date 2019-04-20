package com.m3.model;

import org.springframework.web.multipart.MultipartFile;

public class UserModel {

	
	
	
	 Long dashId;
	 String role; 
	 String firstName;
	 String lastName;
	 String email;
	 String password;
	 String confirmPassword;
	 String gender;
	 String address;
	 String phoneNumber;
	 String maritalStatus;
	 String salary;
	 String datePicker;
	 MultipartFile multipartimage;
	 String imgUrl;
	public Long getDashId() {
		return dashId;
	}
	public void setDashId(Long dashId) {
		this.dashId = dashId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getDatePicker() {
		return datePicker;
	}
	public void setDatePicker(String datePicker) {
		this.datePicker = datePicker;
	}
	public MultipartFile getMultipartimage() {
		return multipartimage;
	}
	public void setMultipartimage(MultipartFile multipartimage) {
		this.multipartimage = multipartimage;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	@Override
	public String toString() {
		return "UserModel [dashId=" + dashId + ", role=" + role + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", password=" + password + ", confirmPassword=" + confirmPassword + ", gender="
				+ gender + ", address=" + address + ", phoneNumber=" + phoneNumber + ", maritalStatus=" + maritalStatus
				+ ", salary=" + salary + ", datePicker=" + datePicker + ", multipartimage=" + multipartimage
				+ ", imgUrl=" + imgUrl + "]";
	}
	
	 
	 
	 
	 
	
	
	
}
