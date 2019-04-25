package p1;



public class Admin {
	private String first_name,last_name,gender,email,password,contact;
	private int age,associate_id;
	 
	public Admin()
	{}
	public String getFirst_name() {
	return first_name;
	}
	public void setFirst_name(String first_name) {
	this.first_name = first_name;
	}
	public String getLast_name() {
	return last_name;
	}
	public void setLast_name(String last_name) {
	this.last_name = last_name;
	}
	public int getAge() {
	return age;
	}
	public void setAge(int age) {
	this.age = age;
	}
	public String getGender() {
	return gender;
	}
	public void setGender(String gender) {
	this.gender = gender;
	}
	
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
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
		public int getAssociate_id() {
			return associate_id;
			}
			public void setAssociate_id(int associate_id) {
			this.associate_id =associate_id;
			}
}
