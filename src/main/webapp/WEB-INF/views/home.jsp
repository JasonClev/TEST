<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <style>


        input {
            width: 70%;
            padding: 10px;
            box-sizing: border-box;
            border-radius: 5px;
            border: none;
        }
           div {
            display: flex;
  			justify-content: center;
  			align-items:center;
  			min-height: 100vh;
         	border-radius: 5px;
            text-align: center;
            padding: 20px;
            background-image:url("https://document-export.canva.com/NxSpo/DAFQteNxSpo/3/thumbnail/0001.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUHWDTJW6UD%2F20221101%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221101T161004Z&X-Amz-Expires=56264&X-Amz-Signature=715eef1de3befad94f0a6d4f55f614a1b948e3232cbb9248605ed6c01dd98ec9&X-Amz-SignedHeaders=host&response-expires=Wed%2C%2002%20Nov%202022%2007%3A47%3A48%20GMT");
            background-repeat: no-repeat;
            
            background-position: 50% 150px;
            background-size:220px 220px;
        }


        .in {
            margin-bottom: 10px;
            background-color: #EEEFF1;
        }

        #btn {
            background-color: #1BBC9B;
            margin-bottom: 5px;
            color: white;
        }
      
        </style>
</head>

<body>

    <div>
        <form action="">
            <input type="text" placeholder="아이디" class="in">
            <input type="password" placeholder="비밀번호" class="in">
            <input type="submit" id="btn" value="로그인"><br>
            <input type="submit" id="btn" value="회원가입"><br>
            <input type="submit" id="btn" value="로그인없이 사용하기"><br>
            <a href="/List">지도 확인</a> 
            
        </form>
 
    </div>
</body>

</html>