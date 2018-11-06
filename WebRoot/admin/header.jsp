<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<HTML>
	<HEAD>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<style type="text/css">
	        .Header {background: url(<%=path %>/img/4.gif) #d10e00 repeat-x left top; height: 120px;}
	        .HeaderTop {margin: 0px auto;}
        </style>
        
        <script type="text/javascript">
            function logout()
			{
			   if(confirm("确定要退出本系统吗??"))
			   {
				   window.parent.location="<%=path %>/login.jsp";
			   }
			}
        </script>
	</HEAD>

	<BODY text=#000000 bgColor=#ffffff leftMargin=0 rightmargin="0" topMargin=0 marginheight="0" marginwidth="0">
		<div class="Header HeaderTop">
			<font style="font-size: 40px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 30px;float:left">
			    &nbsp;&nbsp;&nbsp;
			            基于SSH的酒店客房预约管理
            </font>
            <font style="font-size: 18px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 40px;float:right">
                <c:if test="${sessionScope.userType==0}">
                                                                      欢迎您：系统管理员
                </c:if>
                <c:if test="${sessionScope.userType==1}">
                                                                      欢迎您：${sessionScope.zhuhu.xingming }
                </c:if>
			    &nbsp;&nbsp;&nbsp;
			    <!--  <a href="#" onclick="logout()" style="color: white;">注销退出</a>-->
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </font>
		</div>
    </BODY>
</HTML>
