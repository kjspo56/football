<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<!-- �˻���� -->
<form action="postlist.do" method="post">
<table border="1" cellpadding="0" cellspacing="0" width="700">
	<tr>
		<td align="right">
			<select name="searchCondition">
				<option value="writer">�ۼ���</option>
			</select>
			<input name="searchKeyword" type="text"/>
			<input type="submit" value="�˻�"/>
		</td>
	
	</tr>

</table>

</form>
<!-- - -->



<table  border="1" cellpadding="0" cellspacing="0" width="700">

<tr>
	<th bgcolor="orange" with="100">��ȣ</th>
	<th bgcolor="orange" with="100">����</th>
	<th bgcolor="orange" with="100">�ۼ���</th>
	<th bgcolor="orange" with="100">�����</th>
	
</tr>

<c:forEach items="${postlist}" var="postlist">
<tr>

	<td>${ postlist.ID}</td>
	<td>${ postlist.WRITER}</td>
	<td>${ postlist.DATETIME}</td>
	<td>${ postlist.PLACE}</td>

</tr>



</c:forEach>

</table>

</body>
</html>