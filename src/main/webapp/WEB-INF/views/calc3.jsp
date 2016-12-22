<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.test.mybatis.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html >
<html>
<head>	
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />	
	<script type="text/javascript" src="../js/prefixfree.min.js"></script>
</head>
<body>
<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="text-align:center;">
      <td>내 용</td>
     </tr>
    </table>
    
   <table width="413">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319">3</td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">조회수</td>
      <td width="319">1</td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">이름</td>
      <td width="319">운영자</td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319">2016-12-22</td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319">공지입니다.</td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0">
     
      </td>
                   <td width="399" colspan="2" height="200">
                   공지를 준수합시다.
                </tr>

     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
     <tr align="center">
      <td width="0">&nbsp;</td>
	
      <td width="0">&nbsp;</td>
     </tr>
    </table>
  
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
    </tr></table>
   </body>

 </html>