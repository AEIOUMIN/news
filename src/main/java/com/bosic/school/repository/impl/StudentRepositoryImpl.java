package com.bosic.school.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bosic.school.domain.Student;
import com.bosic.school.repository.StudentRepository;

@Repository
public class StudentRepositoryImpl implements StudentRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Student t) {
		sessionFactory.getCurrentSession().save(t);

	}

	@Override
	public void update(Student t) {
		sessionFactory.getCurrentSession().update(t);

	}

	@Override
	public void delete(Integer id) {

		Student student = sessionFactory.getCurrentSession().get(Student.class, id);
		if (student != null) {
			sessionFactory.getCurrentSession().delete(student);
		}

	}

	@Override
	public void delete(Integer[] ids) {

		for (Integer id : ids) {
			delete(id);
		}
	}

	@Override
	public Student findOne(Integer id) {
		return sessionFactory.getCurrentSession().get(Student.class, id);

	}

	@Override
	public Student findOne(String where, Object[] params) {
		String hql = "from Student as u " + where;
		Query<?> query = sessionFactory.getCurrentSession().createQuery(hql);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		return (Student) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> findPage(int pageIndex, int pageSize, String where, Object[] params) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Student u " + where;
		Query<Student> query = session.createQuery(hql);
		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}

		}

		query.setFirstResult((pageIndex - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> findList(String where, Object[] params) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Student as u " + where;
		Query<Student> query = session.createQuery(hql);
		int i = 0;
		if (params != null) {

			for (Object param : params) {
				query.setParameter(i++, param);
			}
		}
		return query.list();
	}

	@Override
	public Long totalCount(String where, Object[] params) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select count(id) from Student as u " + where;
		Query<?> query = session.createQuery(hql);
		int i = 0;
		if(params!=null){
			for (Object param : params) {
				query.setParameter(i++, param);
			}
		}
		
		return (Long) query.uniqueResult();
	}

}
