<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<div id="result" align="center"></div>
<hr/>
<div align="center">
	<button id="btn" class="btn btn-danger">Button</button>
</div>
<script>
	$("#btn").click(function() {
		var v = $("#q").val();
		$.ajax({
			"url" : "/08ajax.jsp",
			"method" : "get",
			"data" : {
				"q" : v,
				"v" : "value"
				// 파라미터 초기화 속성
				// "data" : {
				//		파라미터명 : 파라미터밸류
				// }
			}
		}).done(function(rst) {
			$("#result").append("<ul>");
			$("#result").append("<li>Name : " + rst.name + "</li>");
			$("#result").append("<li>Age : " + rst.age + "</li>");
			$("#result").append("<li>Alive : " + rst.alive + "</li>");
			$("#result").append("<li>Hobby : " + rst.hobby[0] + ", " + rst.hobby[1] + "</li>");
			$("#result").append("</ul>");
			// ajax로 긁어올 때 글어오는 대상 파일의 contentType이 text/html로 설정되어 있다면
			// 읽혀오지 않는다. 그럴 때는 application/json로 바꿔주면 된다.
			// 이 이유는 ajax는 응답을 가져올 때 그냥 text로 가져오기 때문이다.
		})
	});
</script>