<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>修改退款权限密码</title>
	<link href="<%=request.getContextPath()%>/css/zxbgstyle.css" rel="stylesheet" />
</head>
<body class="bgbj">
	<div class="rightbg">
		<div class="bgposition">您现在的位置：修改退款权限密码</div>
		<div class="bgtj">
			<form id="modifyForm" action="<%=request.getContextPath()%>/resources/partner/dealeremployeemanage!modifyRefundPwd.action" method="post">
				<s:hidden id="iwoid" name="dealerEmployeeVO.iwoid"/>
				<ul class="tj_title">
	                <li>修改密码</li>
	            </ul>
				<ul class="bg_tjtab bg-block">
					<li class="bg_tjall">
						<table>
							<tbody>
								<tr>
									<th>旧密码</th>
									<td>
										<input type="password" id="oldRefundPassword" name="dealerEmployeeVO.oldRefundPassword" maxlength="6" value="" /><span class="tj_bt">*</span>
									</td>
								</tr>
								<tr>
									<th>新密码</th>
									<td >
										<input type="password" id="refundPassword" name="dealerEmployeeVO.refundPassword" maxlength="6" value="" /><span class="tj_bt">*</span>
									</td>
								</tr>
								<tr>
									<th>确认新密码</th>
									<td >
										<input type="password" id="confirmPwd" maxlength="6" value="" /><span class="tj_bt">*</span>
									</td>
								</tr>
							</tbody>
						</table>
					</li>
					<li class="bg_button">
						<a href="javascript:void(0);" onclick="modify();return false;">确定</a>
						<a href="javascript:void(0);" onclick="reset();" >重写</a>
					</li>
				</ul>
			</form>
		</div>
		<s:property value="#request.messageBean.alertMessage" escape="false" />
	</div>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/check.js"></script>
	<script type="text/javascript">
		function modify() {
			var oldRefundPassword = $("#oldRefundPassword").val();
			var refundPassword = $("#refundPassword").val();
			var confirmPwd = $("#confirmPwd").val();
			
			if (isBlank(oldRefundPassword)) {
				alert("旧密码不能为空！");
				$("#oldRefundPassword").focus();
				return false;
			} else if (!isDigital6Exp(oldRefundPassword)) {
				alert("旧密码应为6数字！");
				$("#oldRefundPassword").focus();
				return false;
			} else if (isBlank(refundPassword)) {
				alert("新密码不能为空！");
				$("#refundPassword").focus();
				return false;
			} else if (!isDigital6Exp(refundPassword)) {
				alert("新密码应为6数字！");
				$("#refundPassword").focus();
				return false;
			} else if (isBlank(confirmPwd)) {
				alert("确认密码不能为空！");
				$("#confirmPwd").focus();
				return false;
			} else if (!isDigital6Exp(confirmPwd)) {
				alert("确认密码应为6数字！");
				$("#confirmPwd").focus();
				return false;
			} else if (refundPassword != confirmPwd) {
				alert("新密码和确认密码不一致！");
				$("#refundPassword").focus();
				return false;
			} 
			
			if (!window.confirm("确认修改？")) {
				return false;
			}
			
			$("#modifyForm").submit();
		}
		
		function reset() {
			$("#modifyForm")[0].reset();
		}
	</script>
</body>
</html>
