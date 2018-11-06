<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/admin.css" type="text/css" rel="stylesheet">
	<SCRIPT language=javascript>
		function expand(el)
		{
			childObj = document.getElementById("child" + el);
	
			if (childObj.style.display == 'none')
			{
				childObj.style.display = 'block';
			}
			else
			{
				childObj.style.display = 'none';
			}
			return;
		}
	</SCRIPT>
  </head>
  
  <BODY>
        <c:if test="${sessionScope.userType==0}">
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 background=<%=path %>/img/menu_bg.jpg border=0>
			<TR>
				<TD vAlign=top align=middle>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TR><TD height=13></TD></TR>
					</TABLE>
					
					
					
					
					
					
					<!-- 第一个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(1) href="javascript:void(0);">修改登录密码</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/userinfo/userPw.jsp" target=main>修改登录密码</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第一个菜单项 -->
					
					
					
					<!-- 第一个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(11) href="javascript:void(0);">客房信息管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child11 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/kefangMana.action" target=main>客房信息管理</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/kefang/kefangAdd.jsp" target=main>客房信息添加</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第一个菜单项 -->
					
					
					
					<!-- 第二个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(2) href="javascript:void(0);">预约信息管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/yudingMana.action" target=main>预约信息管理</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第二个菜单项 -->
					
					
					
					
					
					<!-- 第二个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(3) href="javascript:void(0);">入住信息管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/ruzhuMana.action" target=main>入住信息管理</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/ruzhu/ruzhuAdd.jsp" target=main>入住信息添加</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第二个菜单项 -->
					
					
					
					<!-- 第二个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(4) href="javascript:void(0);">退房信息管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/ruzhu_weituifang.action" target=main>退房信息管理</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/tongji/tongji_pre.jsp" target=main>收入信息统计</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第二个菜单项 -->
					
					
					
					<!-- 第二个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(5) href="javascript:void(0);">友情连接管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/lianjieMana.action" target=main>友情连接管理</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/admin/lianjie/lianjieAdd.jsp" target=main>友情连接添加</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第二个菜单项 -->
					
					
					
					
					<!-- 第二个菜单项 -->
					<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background="<%=path %>/img/menu_bt.jpg">
								<A class=menuParent onclick=expand(6) href="javascript:void(0);">留言板--管理</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
					</TABLE>
					<TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/liuyanMana.action" target=main>留言板--管理</A>
							</TD>
						</TR>
						<TR height=20>
							<TD align=middle width=30>
								<IMG height=9 src="<%=path %>/img/menu_icon.gif" width=9>
							</TD>
							<TD>
								<A class=menuChild href="<%=path %>/userMana.action" target=main>会员信息管理</A>
							</TD>
						</TR>
					</TABLE>
					<!-- 第二个菜单项 -->
					
					
					
					
					
					
					
				</TD>
				<TD width=1 bgColor=#d1e6f7></TD>
			</TR>
		</TABLE>
		</c:if>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</BODY>
</html>
