<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<br>
	<br>
	<div class="container">
		<fieldset>
			<legend align="top">Student Registration Form</legend>
			<form class="form-horizontal" action="studentcontroller" method="post">
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">Student Name</label>
					<div class="col-sm-6">
						<input type="text" class="form-control"
							id="exampleFormControlInput1" placeholder="Amir Mahajan" name="sname">
					</div>
				</div>
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">College Name</label>
					<div class="col-sm-6">
						<input type="text" class="form-control"
							id="exampleFormControlInput1" placeholder="email@example.com" name="cname">
					</div>
				</div>
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">Roll</label>
					<div class="col-sm-6">
						<input type="number" class="form-control"
							id="exampleFormControlInput1" placeholder="15" name="roll">
					</div>
				</div>
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">Email</label>
					<div class="col-sm-6">
						<input type="email" class="form-control"
							id="exampleFormControlInput1" placeholder="email@example.com" name="email">
					</div>
				</div>
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">Class</label>
					<div class="col-sm-6">
						<input type="text" class="form-control"
							id="exampleFormControlInput1" value="" name="class">
					</div>
				</div>
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">DOB</label>
					<div class="col-sm-6">
						<input type="date" class="form-control"
							id="exampleFormControlInput1" value="" name="dob">
					</div>
				</div>
				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">Gender</label>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="gender"
							id="inlineRadio1" value="Male"> Male
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="gender"
							id="inlineRadio2" value="Female"> Female
						</label>
					</div>
				</div>

				<div class="form-group row">
					<label for="exampleFormControlInput1"
						class="col-sm-2 col-form-label">Subject</label>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" id="inlineCheckbox1"
							value="Java" name="subject"> Java
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" id="inlineCheckbox2"
							value="Php" name="subject"> Php
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" id="inlineCheckbox1"
							value="Android" name="subject"> Android
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" id="inlineCheckbox2"
							value=".Net" name="subject"> .Net
						</label>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label"
						for="inlineFormCustomSelectPref">Departments</label> <select
						class="custom-select mb-2 mr-sm-2 mb-sm-0"
						id="inlineFormCustomSelectPref" name="departments">
						<option selected>Choose...</option>
						<option value="IT">IT</option>
						<option value="Computer">Computer</option>
						<option value="Electrical">Electrical</option>
						<option value="Electronics">Electronics</option>
					</select>
				</div>
				<div class="form-group row">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</form>
		</fieldset>
	</div>
</body>
</html>