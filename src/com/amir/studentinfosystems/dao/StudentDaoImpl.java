package com.amir.studentinfosystems.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Generated;

import org.apache.tomcat.util.descriptor.web.SecurityCollection;

import com.amir.studentinfosystems.dto.Student;
import com.amir.studentinfosystems.util.DbUtil;

public class StudentDaoImpl implements StudentDao {
PreparedStatement ps=null;
	@Override
	public void saveStudentInfo(Student student) {
	String sql="insert into student_details(student_name,college_name,email,class,roll,gender,subject,departments,dob,image_url)values(?,?,?,?,?,?,?,?,?,?)";
		try {
			ps=DbUtil.getconnection().prepareStatement(sql);
			ps.setString(1, student.getStudentName());
			ps.setString(2, student.getCollegeName());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getClassName());
			ps.setInt(5, student.getRoll());
			ps.setString(6, student.getGender());
			ps.setString(7, student.getSubject());
			ps.setString(8, student.getDepatrments());
			ps.setDate(9, new java.sql.Date(student.getDob().getTime()));
			ps.setString(10, student.getImageUrl());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateStudentInfo(Student student) {
		String sql="update student_details set student_name=?,college_name=?,email=?,class=?,roll=?,gender=?,subject=?,departments=?,dob=?,image_url=?";
		try {
			ps=DbUtil.getconnection().prepareStatement(sql);
			ps.setString(1, student.getStudentName());
			ps.setString(2, student.getCollegeName());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getClassName());
			ps.setInt(5, student.getRoll());
			ps.setString(6, student.getGender());
			ps.setString(7, student.getSubject());
			ps.setString(8, student.getDepatrments());
			ps.setDate(9, new java.sql.Date(student.getDob().getTime()));
			ps.setString(10, student.getImageUrl());
			ps.setInt(11, student.getId());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteStudentInfo(int id) {
		String sql="delete from student_details where id=?";
		try {
			ps=DbUtil.getconnection().prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Student> getAllStudentInfo() {
		List<Student> studentList=new ArrayList<>();
		String sql="select * from student_details";
		try {
			ps=DbUtil.getconnection().prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student student=new Student();
			student.setId(rs.getInt("id"));
			student.setStudentName(rs.getString("student_name"));
			student.setCollegeName(rs.getString("college_name"));
			student.setEmail(rs.getString("email"));
			student.setClassName(rs.getString("class"));
			student.setRoll(rs.getInt("roll"));
			student.setGender(rs.getString("gender"));
			student.setSubject(rs.getString("subject"));
			student.setDepatrments(rs.getString("depatrments"));
			student.setDob(rs.getDate("dob"));
			studentList.add(student);
		}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Student getStudentInfoById(int id) {
		String sql="select * from student_details where id=?";
		return null;
	}

	@Override
	public String getImageUrl(int id) {
String sql="select image_url from student_details where id=?";
		return null;
	}

}
