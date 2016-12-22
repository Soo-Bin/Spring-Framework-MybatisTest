<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import ="java.util.*,com.test.mybatis.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결과창</title>
</head>
<body>

<table border="1">
    <tr>
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
          <td>${member._title}</td>
          <td>${member._user}</td>   
          <td>${member._date}</td>
          <td>${member._cnt}</td>
       </tr>
    </c:forEach>

</table>

</body>
</html>