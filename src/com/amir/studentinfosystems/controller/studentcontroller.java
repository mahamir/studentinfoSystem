package com.amir.studentinfosystems.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amir.studentinfosystems.dto.Student;
import com.amir.studentinfosystems.service.StudentService;
import com.amir.studentinfosystems.service.StudentServiceImpl;

@WebServlet("/studentcontroller")
public class studentcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String STUDENT_LIST_PAGE = "studentDetails.jsp";
	private static final String STUDENT_NEW_PAGE = "studentForm.jsp";
	StudentService studentService = new StudentServiceImpl() ;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("actions");
		String forward = "";
		if (action.equals("student_new")) {
			forward = STUDENT_NEW_PAGE;
		} else if (action.equals("student_delete")) {
			int id=Integer.parseInt(request.getParameter("studentId"));
			studentService.deleteStudentInfo(id);
			request.setAttribute("students", studentService.getAllStudentInfo());
			forward = STUDENT_LIST_PAGE;
		}else if (action.equals("student_list")) {
			forward = STUDENT_LIST_PAGE;
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Student student = new Student();
		student.setStudentName(request.getParameter("smane"));
		student.setCollegeName(request.getParameter("cname"));
		student.setEmail(request.getParameter("email"));
		student.setClassName(request.getParameter("class"));
		student.setRoll(Integer.parseInt(request.getParameter("roll")));
		student.setDepatrments(request.getParameter("departments"));
		student.setGender(request.getParameter("gender"));

		// for date
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date dob = dateFormat.parse(request.getParameter("dob"));
			student.setDob(dob);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		// for subject(check box)
		String[] subjects = request.getParameterValues("subject");
		String subject = "";
		for (String sub : subjects) {
			subject = subject + sub + "/";

		}
		student.setSubject(subject);
		
		//for image
		student.setImageUrl("");
		
		studentService.saveStudentInfo(student);
		RequestDispatcher rd=request.getRequestDispatcher(STUDENT_LIST_PAGE);
		request.setAttribute("students", studentService.getAllStudentInfo());
		rd.forward(request, response);
	}

	}
