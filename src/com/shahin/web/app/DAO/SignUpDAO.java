package com.shahin.web.app.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shahin.web.app.Model.SignUp;

@Component
public class SignUpDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public void save(SignUp signUp)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(signUp);
	}
}
