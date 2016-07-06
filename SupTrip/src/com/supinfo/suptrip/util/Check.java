package com.supinfo.suptrip.util;

//For check the user input
public class Check {
	private Check(){}
	public static boolean isTwoPasswordEqual(String password1, String password2){
		if(password1.equals(password2)){
			return true;
		}
		else{
			return false;
		}
	}
	public static boolean isValidIdbooster(String idbooster){
		if(!idbooster.matches("[0-9]+") || idbooster.length() != 6 || idbooster.isEmpty()){
			return false;
		}
		else{
			return true;
		}
	}
	public static boolean isVailidName(String name){
		if(name.isEmpty()){
			return false;
		}
		else{
			return true;
		}
	}
	public static boolean isValidEmail(String email){
		String partern = "[a-zA-Z0-9][a-zA-Z0-9._-]{2,16}[a-zA-Z0-9]@[a-zA-Z0-9]+.[a-zA-Z0-9]+";
		if(email.matches(partern) && !email.isEmpty()){
			return true;
		}
		else{
			return false;
		}	
	}
	public static boolean isValidPassword(String password){
		if(password.matches("^.*(?=.{7,})(?=..*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$") && password.length()>6 && password.length()<19 && !password.isEmpty()){
			return true;
		}
		else{
			return false;
		}
	}
}
