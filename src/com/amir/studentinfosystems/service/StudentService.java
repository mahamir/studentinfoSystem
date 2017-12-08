package com.amir.studentinfosystems.service;

import java.util.List;

import com.amir.studentinfosystems.dto.Student;

public interface StudentService {
	public void saveStudentInfo(Student student);

	public void updateStudentInfo(Student student);

	public void deleteStudentInfo(int id);
	
	public List<Student>getAllStudentInfo();
	
	public Student getStudentInfoById(int id);
	
	public String getImageUrl(int id);
}
