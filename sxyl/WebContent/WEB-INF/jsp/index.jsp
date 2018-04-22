<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=path%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<link href='static/fullcalendar-3.0.1/fullcalendar.css' rel='stylesheet' />
<link href='static/fullcalendar-3.0.1/fullcalendar.print.css' rel='stylesheet' media='print' />
<link rel="stylesheet" type="text/css" href="static/webuploader/webuploader.css" />
<link rel="stylesheet" type="text/css" href="static/webuploader/style.css" />
<link rel="stylesheet" href="static/css/css.css" />
<link rel="stylesheet" href="static/css/mymember.css" />
<link rel="stylesheet" href="static/css/member.css" />
<link rel="stylesheet" href="static/css/pd.css" />
<link rel="stylesheet" href="static/css/pay.css" />
<link rel="stylesheet" href="static/css/job.css" />
<link rel="stylesheet" href="static/css/purposeCss.css" />
<link rel="stylesheet" href="static/css/tablecss.css" />
</head>
<body class="easyui-layout">
	<div data-options="region:'north',noheader:true,border:false"
		style="height: 60px; padding: 10px;">
	</div>
	<div data-options="region:'west',title:'菜单区域',split:true" class="memu">
		<ul id="menu">
		</ul>
	</div>
	<div data-options="region:'center',noheader:true" >
	</div>
		<script type="text/javascript" src="static/webuploader/jquery.js"></script>
		<script src='static/fullcalendar-3.0.1/moment.min.js'></script>
		<script src='static/fullcalendar-3.0.1/fullcalendar.min.js'></script>
		<script src="static/fullcalendar-3.0.1/zh-cn.js"></script>
		<script data-main="static/js/application" src="static/js/require.js"></script>
		<script> require(["requirejs/index"]);</script>
</body>
</html>