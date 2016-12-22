<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.test.mybatis.*"%>
<%
	final int ROWSIZE = 4;  // 한페이지에 보일 게시물 수
	final int BLOCK = 5; // 아래에 보일 페이지 최대개수 1~5 / 6~10 / 11~15 식으로 5개로 고정

	int pg = 1; //기본 페이지값
	
	if(request.getParameter("pg")!=null) { //받아온 pg값이 있을때, 다른페이지일때
		pg = Integer.parseInt(request.getParameter("pg")); // pg값을 저장
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1); // 해당페이지에서 시작번호(step2)
	int end = (pg*ROWSIZE); // 해당페이지에서 끝번호(step2)
	
	int allPage = 0; // 전체 페이지수
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1; // 시작블럭숫자 (1~5페이지일경우 1, 6~10일경우 6)
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK; // 끝 블럭 숫자 (1~5일 경우 5, 6~10일경우 10)

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
<input type = "submit" value = "회원가입"></form>

<table>
	<tr>
		<form method="post" action = "/controller/main">
   		<input type = "submit" value = "글쓰기"></form>
   	</tr>
   	<tr>
   	</tr>
   	<tr>
   		<form method="post" action = "/controller/">
   		<input type = "submit" value = "목록"></form>
    </tr>
</table>

<table border="1">
    <tr bgcolor="#dddddd">
       <td width="10%" align="center">번호</td>
       <td width="45%" align="center">제목</td>
       <td width="10%" align="center">작성자</td>
       <td width="20%" align="center">등록 일시</td>
       <td width="5%" align="center">조회수</td>
    </tr>
    <!-- result는 contoller의 addObject로 부터 가져온다. -->
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
			[<a href="list.jsp?pg=1">◀◀</a>]
			[<a href="list.jsp?pg=<%=startPage-1%>">◀</a>]
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
			[<a href="list.jsp?pg=<%=endPage+1%>">▶</a>]
			[<a href="list.jsp?pg=<%=allPage%>">▶▶</a>]
		<%
			}
		%>
		</td>
</table>
</body>
</html>