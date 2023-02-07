package spring.mvc.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void createUser(User user) {
		hibernateTemplate.save(user);
	}

	@Override
	public User getUserByAccNo(String accNo) {
		User user = hibernateTemplate.get(User.class, accNo);
		return user;
	}

	@Override
	public void updateInfo(User user) {
		hibernateTemplate.update(user);		
	}

	@Override
	public void deleteAccount(String accNo) {
		User user = hibernateTemplate.get(User.class, accNo);
		hibernateTemplate.delete(user);	
	}

}
