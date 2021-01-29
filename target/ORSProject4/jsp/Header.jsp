<!DOCTYPE html>

<%@ page import="com.ncs.controller.LoginCtl"%>
<%@page import="com.ncs.beans.RoleBean"%>
<%@page import="com.ncs.beans.UserBean"%>
<%@page import="com.ncs.controller.ORSView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<body>
	<%
		UserBean userBean = (UserBean) session.getAttribute("user");
	boolean userLoggedIn = userBean != null;
	String welcomeMsg = "Hi, ";
	if (userLoggedIn) {
		String role = (String) session.getAttribute("role");
		welcomeMsg += userBean.getFirstName() + " (" + role + ")";
	} else {
		welcomeMsg += "Guest";
	}
	%>

	<table width="100%">
		<tr>
			<th></th>
			<td width="90%"><a href="<%=ORSView.WELCOME_CTL%>">Welcome</b></a> |
				<%
				if (userLoggedIn) {
			%> <a
				href=" <%=ORSView.LOGIN_CTL%>?operation=<%=LoginCtl.OP_LOG_OUT%>">Logout</b></a>

				<%
					} else {
				%> <a href="<%=ORSView.LOGIN_CTL%>">Login</b></a> <%
 	}
 %></td>
			<td rowspan="2">
				<h1 align="right">
					<img src="<%=ORSView.APP_CONTEXT%>/img/Logo.jpg" width="175"
						height="50">
				</h1>
			</td>
		</tr>

		<tr>
			<th></th>
			<td>
				<h3><%=welcomeMsg%></h3>
			</td>
		</tr>

		<%
			if (userLoggedIn) {
		%>
		<tr>
			<td colspan="2"><a href="<%=ORSView.MY_PROFILE_CTL%>">MyProfile</a>
				| <a href="<%=ORSView.USER_CTL%> ">Add User</a> | <a
				href="<%=ORSView.USER_LIST_CTL%>">User List</a> | <a
				href="<%=ORSView.STUDENT_CTL%>">Add Student</a> | <a
				href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a> | <a
				href="<%=ORSView.COLLEGE_CTL%>">Add College</a> | <a
				href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a> | <a
				href="<%=ORSView.MARKSHEET_CTL%>">Add Marksheet</a> | <a
				href="<%=ORSView.MARKSHEET_LIST_CTL%>">Marksheet List</a> | <a
				href="<%=ORSView.FACULTY_CTL%>">Add Faculty</a> | <a
				href="<%=ORSView.FACULTY_LIST_CTL%>">Faculty List</a> | <a
				href="<%=ORSView.COURSE_CTL%>">Add Course</a> | <a
				href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a> | <a
				href="<%=ORSView.SUBJECT_CTL%>">Add Subject</a> | <a
				href="<%=ORSView.SUBJECT_LIST_CTL%>">Subject List</a> | <a
				href="<%=ORSView.ROLE_CTL%>">Add Role</a> | <a
				href="<%=ORSView.ROLE_LIST_CTL%>">Role List</a> | <a
				href="<%=ORSView.GET_MARKSHEET_CTL%>">Get Marsheet</a> | 
				<a href="<%= ORSView.MARKSHEET_MERIT_LIST_CTL%>">Marksheet Merit List</a> |
				<a href="<%=ORSView.TIMETABLE_CTL%>">Add TimeTable</a>
				| <a href="<%=ORSView.TIMETABLE_LIST_CTL%>">TimeTable List</a> | <a
				href="<%=ORSView.CHANGE_PASSWORD_CTL%>">Change Password</a> | <a
				href="<%=ORSView.JAVA_DOC_VIEW%>" target="blank">Java Doc.</a> <%
 	}
 %></td>
		</tr>

	</table>
	<hr>
</body>
</html>