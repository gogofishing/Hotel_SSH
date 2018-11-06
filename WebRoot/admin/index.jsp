<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>

	<FRAMESET border=0 frameSpacing=0 rows="110, *" frameBorder=0>
		<FRAME name=header src="<%=path %>/admin/header.jsp" frameBorder=0 noResize scrolling=no>
		<FRAMESET cols="170, *">
			<FRAME name=menu src="<%=path %>/admin/menu.jsp" frameBorder=0 noResize>
			<FRAME name=main src="<%=path %>/admin/main.jsp" frameBorder=0 noResize scrolling=yes>
		</FRAMESET>
	</FRAMESET>
	<noframes>
	</noframes>
</html>
