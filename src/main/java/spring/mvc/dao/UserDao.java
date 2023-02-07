package spring.mvc.dao;

import spring.mvc.model.User;

public interface UserDao {

	void createUser(User user);
	
	User getUserByAccNo(String accNo);
	
	void updateInfo(User user);
	
	void deleteAccount(String accNo);
}
