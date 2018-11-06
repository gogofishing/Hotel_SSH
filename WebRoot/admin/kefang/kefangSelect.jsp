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
		
        <script language="javascript">
            function StringBuffer()
            { 
			   this._strs = new Array; 
			} 
			StringBuffer.prototype.append = function (str) 
			{ 
			   this._strs.push(str); //添加
			} 
			StringBuffer.prototype.pop = function (str) 
			{ 
			   this._strs.pop(str); //删除最后一个
			} 
			StringBuffer.prototype.toString = function()
		    { 
			   return this._strs.join(","); 
			}
            
            function queding()
            {
                 var sb = new StringBuffer(); 
                 
                 var object=document.getElementsByName("kefangId");//返回的obeject是数组
				 for(i=0;i<object.length;i++)
				 {
				      if(object[i].checked==true)
					  {
					      sb.append(object[i].value); 
					  }
				 }
				 window.returnValue = sb.toString();
		         window.close();
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="100" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="5%">序号</td>
					<td width="10%">客房类型</td>
					<td width="10%">房间编号</td>
					<td width="10%">房间面积</td>
					
					<td width="30%">房间介绍</td>
					<td width="10%">房间费用(一天)</td>
					<td width="10%">状态</td>
					
					<td width="7%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.kefangList}" var="kefang" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${sta.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${kefang.kefangleixing}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${kefang.fangjianhao}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${kefang.area}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						${kefang.jieshao}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${kefang.qianshu}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<c:if test="${kefang.zhuangtai=='空闲中'}">
						     <span style="color: black">空闲中</span>
						</c:if>
						<c:if test="${kefang.zhuangtai=='已预约'}">
						     <span style="color: red">已预约</span>
						</c:if>
						<c:if test="${kefang.zhuangtai=='已入住'}">
						     <span style="color: green">已入住</span>
						</c:if>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<input type="radio" name="kefangId" value="${kefang.id}" style="border: 0px;"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
				  <tr>
				    <td>
				      <input type="button" value="确定" style="width: 80px;" onclick="queding()" />
				    </td>
				  </tr>
			</table>
	</body>
</html>
