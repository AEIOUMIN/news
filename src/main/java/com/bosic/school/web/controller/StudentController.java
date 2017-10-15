package com.bosic.school.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.bosic.school.domain.Student;
import com.bosic.school.service.PagedList;
import com.bosic.school.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/index/{id}")
	public String index(@PathVariable(required=true)Integer id,Model model){
		int pageIndex =id;
		int pageSize =10;
		PagedList<Student> students=studentService.findPage(pageIndex, pageSize, "", null);
		
		model.addAttribute("students",students);
		return "student/index";
		
	}
	@RequestMapping("/create")
	public String create(){
		
		return "student/create";
		
	}
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable(required=true)Integer id,Model model){
		Student student=	studentService.findOne(id);
		model.addAttribute("student",student);
		return "student/edit";
	}
	@RequestMapping("/save")
	public String save(Student student){
		if(student.getId()!=null){
			studentService.update(student);
		}else{
			studentService.save(student);
		}
		return "redirect:/student/index/1";
		
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable(required=true)Integer id){
		studentService.delete(id);
		
		return "redirect:/student/index/1";
		
	}
	@RequestMapping("/delete")
	public String deleteList(Integer[] ids){
		studentService.delete(ids);
		return "redirect:/student/index/1";
		
	}
	@RequestMapping("/fileUpload")
	public String fileLoad(){
		
		return "student/fileload";
		
	}
	@RequestMapping("/savefile")
	public String saveFile(MultipartFile photo,HttpServletRequest request) throws IllegalStateException, IOException{
		String path =request.getServletContext().getRealPath("/upload");
		if(photo!=null && photo.getSize()>0){
			String filename =UUID.randomUUID().toString()+".jpg";
			photo.transferTo(new File(path+"/"+filename));
		}
		return "redirect:/student/index/1";
		
	}
}
