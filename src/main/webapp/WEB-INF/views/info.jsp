<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.test.mybatis.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main</title>
</head>
<body>

<form  method="post" action="/controller/" name="pagechange">
 <table>
 	<tr>
    	<td id="title">���̵�</td>
        <td>
        <input type="text" name="id" maxlength="20">
        <input type="button" value="�ߺ�Ȯ��" >    
        </td>
    </tr>
    <tr>
        <td id="title">��й�ȣ</td>
        <td>
        <input type="password" name="password" maxlength="15">
        </td>
    </tr>
    <tr>
        <td id="title">��й�ȣ Ȯ��</td>
        <td>
        <input type="password" name="password" maxlength="15">
        </td>
    </tr>
    <tr>
        <td id="title">�̸�</td>
        <td>
        <input type="text" name="name" maxlength="40">
        </td>
    </tr>
    <tr>
        <td id="title">����</td>
        <td>
        <input type="radio" name="gender" value="��" checked>��
        <input type="radio" name="gender" value="��" checked>��
        </td>
    </tr>
    <tr>
        <td id="title">����</td>
        <td>
        <input type="text" name="birth_yy" maxlength="4" placeholder="��(4��)" size="6" >
        	<select name="birth_mm">
            	<option value="">��</option>
                <option value="01" >1</option>
                <option value="02" >2</option>
                <option value="03" >3</option>
                <option value="04" >4</option>
                <option value="05" >5</option>
                <option value="06" >6</option>
                <option value="07" >7</option>
                <option value="08" >8</option>
                <option value="09" >9</option>
                <option value="10" >10</option>
                <option value="11" >11</option>
                <option value="12" >12</option>
             </select>
		<input type="text" name="birth_dd" maxlength="2" placeholder="��" size="4" >
        </td>
	</tr>
    <tr>
        <td id="title">�̸���</td>
        <td>
        <input type="text" name="email_1" maxlength="30">@
    	    <select name="email_2">
        		<option>naver.com</option>
                <option>daum.net</option>
                <option>gmail.com</option>
                <option>nate.com</option>                        
            </select>
        </td>
    </tr>                 
    <tr>
        <td id="title">�޴���ȭ</td>
        <td>
        <input type="text" name="phone" />
        </td>
    </tr>
    <tr>
        <td id="title">�ּ�</td>
        <td>
        <input type="text" size="50" name="address"/>
        </td>
        <td>&nbsp;</td>
    </tr>
     	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     	<tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
	    <tr align="center">
      	<td>&nbsp;</td>
      	<td colspan="2"><input type=submit value="���" OnClick="javascript:writeCheck();">
       	<input type=button value="���" OnClick="javascript:history.back(-1)">
      	<td>&nbsp;</td>
    </tr>
</table>

</form>
</body>
</html>