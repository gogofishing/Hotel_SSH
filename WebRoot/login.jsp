<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<style>
		* {margin:0;padding:0;font-size:12px}
		html, body {height:100%;background:url(<%=path %>/img/pagebg.gif)}
		button,input,select { vertical-align:middle;}
		img { border:none; vertical-align:middle;}
		ul,ol { list-style-type:none;}
		.warper-bg,.warper {width:708px;height:423px;position:absolute;left:50%;margin-left:-354px;top:50%;margin-top:-232px;z-index:200}
		.warper-bg {background:url(<%=path %>/img/bg.png) no-repeat;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<%=path %>/img/bg.png', sizingMethod='crop');_background:none;z-index:100}
		.content {height:75px;margin-top:75px;height:280px}
		.download {width:270px;float:left;height:100%}
		.downloadlink {display:block;width:100%;height:100%;text-indent:-10000px}
		.login {width:438px;float:right;height:100%}
		.login .text {padding:20px 30px 10px 10px;text-indent:2em;font-size:14px;line-height:150%}
		
		.input-text {background:#FFF url(<%=path %>/img/input_bg.gif) no-repeat;border:0;padding:3px}
		.validate { cursor:pointer}
		.button-submit {width:94px;height:69px;background:url(<%=path %>/img/submit.gif) no-repeat;border:0; cursor:pointer}
		
		.links {padding:20px 0 0 30px}
		.links li {float:left;width:85px;font-size:14px}
		.links li span {font-weight:bold}
		.links li a {color:#F00}
		
		.url-new {display:block;float:right;width:400px;height:36px;text-indent:-100000px}
		
		.cRed {color:#900;font-size:14px;font-weight:bold; font-family:'黑体'}
		
		#msgdiv {height: 130px;width: 300px;border: 5px solid #a09d18;padding: 10px;text-align: center;}
	</style>
	
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    
	<script language="javascript">
	    function login()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
		
		
		
		function userReg()
		{
		    var strUrl = "<%=path %>/userReg.jsp";
            var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	    }
	</script>
  </head>
  
  <body>
      <div class="warper-bg"></div>
      <div class="warper">
	      <div class="content">
              <a href="#"><div style="width:163px; height:29px; position:absolute; top: 234px; left:50px;cursor:pointer;"> </div></a>
              <a href="#"><div style="width:202px; height:21px; position:absolute; top: 273px; left:36px;cursor:pointer;"></div></a>
		      <div class="login">
				  <div class="text" style="font-size: 22px;font-weight: 700">
					基于SSH的酒店客房预约管理
				  </div>
			      <div class="login-field">
			           <form action="" method="post" name="ThisForm">
							<table width="100%" border="0" cellspacing="10">
							  <tr>
								<td width="80" align="right">
								   <span class="cRed">账号:</span>
							    </td>
								<td width="150">
								   <input class="input-text" type="text" name="userName" value="" style="width: 200px;"/>
								</td>
							  </tr>
							  <tr>
								<td width="80" align="right">
								   <span class="cRed">密码:</span>
							    </td>
								<td width="150">
								   <input class="input-text" type="text" name="userPw" value="" style="width: 200px;"/>
								</td>
							  </tr>
							  <tr style="display: none;">
								<td width="80" align="right">
								   <span class="cRed">类型:</span>
							    </td>
								<td width="150">
								     <select name="userType" id="userType"  style="width: 205px;"> 
                                         <option value="0">管理员</option>
                                         <option value="1">11111&nbsp;&nbsp;&nbsp;11</option>
                                     </select>
								</td>
							  </tr>
							  <tr>
								<td width="80" align="right">
							    </td>
								<td rowspan="2">
								   <input type="button" value="登陆" onClick="login()" style="width: 80px;"/>&nbsp; 
								   <input type="button" value="重置" onClick="userReg()" style="width: 80px;"/>&nbsp; 
								   <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
								</td>
							  </tr>
							</table>
				       </form>
			      </div>
		      </div>
	      </div>
      </div>
  </body>
</html>
