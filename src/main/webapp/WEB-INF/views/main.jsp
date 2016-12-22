<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.test.mybatis.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="../js/prefixfree.min.js"></script>
<title>main</title>
</head>
<body>
<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="text-align:center;">
      <td>글 쓰 기</td>
     </tr>
    </table>
<form id="board" name="board" method="post" action="/controller/insert">
<table>
	<tr>
    	<td>&nbsp;</td>
    	<td align="center">제목</td>
      	<td><input name="title" size="60" maxlength="100"></td>
      	<td>&nbsp;</td>
    </tr>
    <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    
   	<tr>
      	<td>&nbsp;</td>
      	<td align="center">내용</td>
      	<td><textarea name="memo" cols="60" rows="15"></textarea></td>
      	<td>&nbsp;</td>
    </tr>
     	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     	<tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
	    <tr align="center">
      	<td>&nbsp;</td>
      	<td colspan="2"><input type=submit value="등록" OnClick="javascript:writeCheck();">
       	<input type=button value="취소" OnClick="javascript:history.back(-1)">
      	<td>&nbsp;</td>
    </tr>
   </table>
</form>
</body>
</html>