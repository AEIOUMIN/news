package com.bosic.school.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bosic.school.domain.Student;
import com.bosic.school.repository.StudentRepository;
import com.bosic.school.service.PagedList;
import com.bosic.school.service.StudentService;

@Service
@Transactional(readOnly=true)
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	@Transactional
	public void save(Student t) {
		studentRepository.save(t);
		
	}

	@Override
	@Transactional
	public void update(Student t) {
		studentRepository.update(t);
		
	}

	@Override
	@Transactional
	public void delete(Integer id) {
		studentRepository.delete(id);
		
	}

	@Override
	@Transactional
	public void delete(Integer[] ids) {
		for(Integer id:ids){
			delete(id);
		}
		
	}

	@Override
	public Student findOne(Integer id) {
		return	studentRepository.findOne(id);
		
	}

	@Override
	public Student findOne(String where, Object[] params) {
		
		return studentRepository.findOne(where, params);
	}


	@SuppressWarnings("unchecked")
	@Override
	public PagedList<Student> findPage(int pageIndex, int pageSize, String where, Object[] params) {
		long totalCount =studentRepository.totalCount(where, params);
		List<Student> rows =studentRepository.findPage(pageIndex, pageSize, where, params);
		return new PagedList<Student>(pageIndex, pageSize, totalCount, rows);
	}

	@Override
	public List<Student> findList(String where, Object[] params) {
		
		return studentRepository.findList(where, params);
	}

}
