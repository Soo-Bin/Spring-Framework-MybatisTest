<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.test.mybatis.*"%>
<%
	final int ROWSIZE = 4;  // ���������� ���� �Խù� ��
	final int BLOCK = 5; // �Ʒ��� ���� ������ �ִ밳�� 1~5 / 6~10 / 11~15 ������ 5���� ����

	int pg = 1; //�⺻ ��������
	
	if(request.getParameter("pg")!=null) { //�޾ƿ� pg���� ������, �ٸ��������϶�
		pg = Integer.parseInt(request.getParameter("pg")); // pg���� ����
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1); // �ش����������� ���۹�ȣ(step2)
	int end = (pg*ROWSIZE); // �ش����������� ����ȣ(step2)
	
	int allPage = 0; // ��ü ��������
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1; // ���ۺ����� (1~5�������ϰ�� 1, 6~10�ϰ�� 6)
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK; // �� �� ���� (1~5�� ��� 5, 6~10�ϰ�� 10)

%>

<html> 
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <title>Home</title>
</head>
<body>
<h1>
   WELCOME HOMEPAGE! 
</h1>
<P>  The time on the server is ${serverTime}. </P>

<form method="get" action = "/controller/info">
<input type = "submit" value = "ȸ������"></form>

<table>
	<tr>
		<form method="post" action = "/controller/main">
   		<input type = "submit" value = "�۾���"></form>
   	</tr>
   	<tr>
   	</tr>
   	<tr>
   		<form method="post" action = "/controller/">
   		<input type = "submit" value = "���"></form>
    </tr>
</table>

<table border="1">
    <tr bgcolor="#dddddd">
       <td width="10%" align="center">��ȣ</td>
       <td width="45%" align="center">����</td>
       <td width="10%" align="center">�ۼ���</td>
       <td width="20%" align="center">��� �Ͻ�</td>
       <td width="5%" align="center">��ȸ��</td>
    </tr>
    <!-- result�� contoller�� addObject�� ���� �����´�. -->
    <c:forEach items="${result}" var="member">
       <tr>
          <td>${member._num}</td>
          <td><a href="#">${member._title}</a></td>
          <td>${member._user}</td>   
          <td>${member._date}</td>
          <td>${member._cnt}</td>
       </tr>
    </c:forEach>
   
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<td>&nbsp;</td>
	<tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
 	<tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
  <tr><td colspan="4" height="5"></td></tr>
  <tr>
	<td align="center">
		<%
			if(pg>BLOCK) {
		%>
			[<a href="list.jsp?pg=1">����</a>]
			[<a href="list.jsp?pg=<%=startPage-1%>">��</a>]
		<%
			}
		%>
		
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b>[<%=i %>]</b></u>
		<%
				}else{
		%>
					[<a href="list.jsp?pg=<%=i %>"><%=i %></a>]
		<%
				}
			}
		%>
		
		<%
			if(endPage<allPage){
		%>
			[<a href="list.jsp?pg=<%=endPage+1%>">��</a>]
			[<a href="list.jsp?pg=<%=allPage%>">����</a>]
		<%
			}
		%>
		</td>
</table>
</body>
</html>