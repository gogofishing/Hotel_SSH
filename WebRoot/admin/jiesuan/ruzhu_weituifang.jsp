<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function ruzhu_jiesuan(id)
           {
               if(confirm('您确定退房退房吗？'))
               {
                   var strUrl = "<%=path %>/admin/jiesuan/ruzhu_jiesuan.jsp?id="+id;
                   var ret = window.showModalDialog(strUrl,"","dialogWidth:600px; dialogHeight:350px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
                   window.location.reload();
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="42" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="8%">客房信息</td>
					<td width="8%">客户姓名</td>
					<td width="8%">联系方式</td>
					
					<td width="8%">身份证号</td>
					<td width="8%">入住时间</td>
					<td width="8%">押金信息</td>
					<td width="8%">是否退房</td>
					
					<td width="8%">退房时间</td>
					<td width="8%">费用退房</td>
					<td width="8%">备注信息</td>
					<td width="5%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.ruzhuList}" var="ruzhu" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF">
					<td bgcolor="#FFFFFF" align="center">${sta.index+1}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.kefang.fangjianhao}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.kehuming}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.dianhua}</td>
					
					<td bgcolor="#FFFFFF" align="center">${ruzhu.shenfenzheng}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.ruzhushi}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.yajin}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.shifoutui}</td>
					
					<td bgcolor="#FFFFFF" align="center">${ruzhu.tuifangshi}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.feiyong}</td>
					<td bgcolor="#FFFFFF" align="center">${ruzhu.beizhu}</td>
					<td bgcolor="#FFFFFF" align="center">
					   <input type="button" value="退房退房" onclick="ruzhu_jiesuan(${ruzhu.id})"/>
				    </td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
