<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
< !DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	
	<form action="ex4process.jsp" method="POST">
		<!-- 입력 양식을 묶어서 보내는 form태그 -->
		<!-- 폼 태그 안에는 입력 가능한 태그들을 작성 -->
		<!-- 폼 태그가 입력한 데이터를 서버로 보내줌 -->
		<p>아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 확인"></p>
		
		<p>비밀번호 : <input type="password" name="passwd"></p>
		
		<p>비밀번호 확인 : <input type="password"name="passwd2"></p>
		
		<p>이름 :<input type="text" name="name"></p>
		
		<p>연락처 :<input type="number" name="phone1"> -
		<input type="number" name="phone2"> -
		<input type="number" name="phone3">
		</p>
		
		<p>성별 :
		<label for="gender1">남성</label> 
		<input type=radio id="gender1" name="gender" value="male">
		
		<label for="gender2">여성</label>
		<input type=radio  id="gender2" name="gender" value="여성">
		</p>
 	
		<p>취미 : 독서<input type="checkbox" value="독서" name="hobby">
		운동<input type="checkbox" value="운동"name="hobby">
		영화<input type="checkbox" value="영화"name="hobby">
		</p>
		
		<p>
			<textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea>
	 	</p>
		
		<p><input type="submit" value="전송"><input type="reset" value="다시쓰기"></p>
	</form>
</body>
</html>