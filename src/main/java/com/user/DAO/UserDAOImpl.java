package com.user.DAO;

import java.util.List;


import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.User;

@Repository
public class UserDAOImpl implements UserDAO 
{

	
	@Autowired
	SessionFactory sessionFactory;

	public void adduser(User user) {
		// TODO Auto-generated method stub
		
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(user);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}
	
	public List<User> getList()
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		List<User> showuser=session.createQuery("from User").list();
		tran.commit();
		session.close();
		return showuser;
		
	}

	public void deleteuser(String username)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		User user=(User)session.get(User.class, username); 
		session.delete(user);
		tran.commit();
		session.close();
		
	}
	public User getUser(String id)
	{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			User user=(User)session.get(User.class,id);
			trans.commit();
			session.flush();
			session.close();
			return user;
		}
		
	public void updateUser(User user)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction(); 
		session.update(user);
		tran.commit();
		session.flush();
		session.close();
		
	}
	}





