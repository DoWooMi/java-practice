<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- AJAX_COMMENT 테이블의 댓글정보에 대한 삽입,삭제,변경 기능을 제공하고 댓글 목록을 검색하여
클라이언트에게 전달하는 JSP 문서 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
h1 {
	text-align: center;
}
.comment_table {
	width: 500px;
	margin: 0 auto;
	border: 2px solid #cccccc;
	border-collapse: collapse;
}
.title {
	width: 100px;
	padding: 5px 10px;
	text-align: center;
	border: 1px solid #cccccc;
}
.input {
	width: 400px;
	padding: 5px 10px;
	border: 1px solid #cccccc;
}
.btn {
	text-align: center;
	border: 1px solid #cccccc;
}
#comment_add {
	margin-bottom: 5px;
}
#comment_modify, #comment_remove {
	margin: 10px;
	display: none;	
}
#add_message, #modify_message {
	width: 500px;
	margin: 0 auto;
	margin-bottom: 20px;
	text-align: center;
	color: red;
}
#remove_message {
	padding: 3px;
	text-align: center;
	border: 1px solid #cccccc;
}
.comment {
	width: 550px;
	margin: 0 auto;
	margin-bottom: 5px;
	padding: 3px;
	border: 1px solid #cccccc;
}
.no_comment {
	width: 550px;
	margin: 0 auto;
	margin-bottom: 5px;
	border: 2px solid #cccccc;
	text-align: center;
}
</style>
</head>
<body>
	<h1>AJAX 댓글</h1>
	<hr>
	<%-- 댓글등록태그 --%>
	<div id="comment_add">
		<table class="comment_table">
			<tr>
				<td class="title">작성자</td>
				<td class="input"><input type="text" id="add_writer"></td> 
			</tr>
			<tr>
				<td class="title">댓글내용</td>
				<td class="input"><textarea rows="3" cols="50" id="add_content"></textarea></td> 
			</tr>
			<tr>
				<td class="btn" colspan="2">
					<button type="button" id="add_btn">댓글등록</button>
				</td>
			</tr>
		</table>
		<div id="add_message">&nbsp;</div>
	</div>
	
	<%-- 댓글목록 출력태그 --%>
	<div id="comment_list"></div>
	
	<%-- 댓글변경태그 --%>
	<div id="comment_modify">
		<input type="hidden" id="modify_num" value="">
		<table class="comment_table">
			<tr>
				<td class="title">작성자</td>
				<td class="input"><input type="text" id="modify_writer"></td> 
			</tr>
			<tr>
				<td class="title">댓글내용</td>
				<td class="input"><textarea rows="3" cols="50" id="modify_content"></textarea></td> 
			</tr> 
			<tr>
				<td class="btn" colspan="2">
					<button type="button" id="modify_btn">변경</button>
					<button type="button" id="modify_cancel_btn">취소</button>
				</td>
			</tr>
		</table>
		<div id="modify_message">&nbsp;</div>
	</div>
	
	<%-- 댓글삭제태그 --%>
	<div id="comment_remove">
		<input type="hidden" id="remove_num" value="">
		<div id="remove_message">
			<b>정말로 삭제 하시겠습니까?</b>
			<button type="button" id="remove_btn">삭제</button>
			<button type="button" id="remove_cancel_btn">취소</button>
		</div>
	</div>
	
	<script type="text/javascript">
	
	displayComment();
	
	//comment_list.jsp 문서를 AJAX 기능으로 요청하여 댓글목록을 XML 문서로 응답받아 태그로 출력하는 함수
	function displayComment() {
		$.ajax({
			type: "get",
			url: "comment_list.jsp",
			dataType: "xml",
			success: function(xmlDoc) {
				$("#comment_list").children().remove();
				
				var code=$(xmlDoc).find("code").text();
				if(code=="success"){
					var commentArray=JSON.parse($(xmlDoc).find("data").text());
					
					$(commentArray).each(function() {
						var html="<div class='comment' id='comment_"+this.num+"'>";
						html+="<b>["+this.writer+"]</b><br>";
						html+=this.content.replace(/\n/g, "<br>")+"<br>";
						html+="["+this.regdate+"]<br>";
						html+="<button type='button'>댓글변경</button>";
						html+="<button type='button'>댓글삭제</button>";
						html+="</div>";
						$("#comment_list").append(html);
					});
				} else {
					var message=$(xmlDoc).find("message").text();
						$("#comment_list").html("<div class='no_comment'>"+message+"</div>");
				}
			},
			error: function (xhr) {
				alert("에러코드="+xhr.status);
			}
		});
	}
	
	
	
	
	</script>
	
	
	
	</body>
</html>