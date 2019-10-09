package com.shahin.web.app.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Table(name="sign_up")
public class SignUp {
	
@Id
@Column(name="user_name")
private String name;

@Column(name="email")
private String email;

@Column(name="password")
private String password;

@Column(name="confirm_password")
private String confirmPassword;

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
@Override
public String toString() {
	return "SignUp [name=" + name + ", email=" + email + ", password=" + password + ", confirmPassword="
			+ confirmPassword + "]";
}


}