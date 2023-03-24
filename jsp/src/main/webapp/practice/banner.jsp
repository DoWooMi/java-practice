<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp</title>
<style type="text/css">
/* 슬라이더 기능을 제공하기 위한 태그의 CSS 스타일 속성 */
body {
	margin: 0;
}
#slider {
	position: relative;
	width: 100%;
	height: 550px;
	background-color: white;
}
/* 슬라이더 이미지가 출력되는 태그의 CSS 스타일 속성 */
#sliderContainer {
	position: relative;
	width: 100%;
	height: 500px;
	margin: 0 auto;
	overflow: hidden;
}
/* 슬라이더 이미지 태그 - 모든 슬라이더 이미지가 중첩되어 출력 */
#sliderContainer img {
	display: block;
	position: absolute;
}
/* 왼쪽 화살표 이미지 태그 - 슬라이더 이미지 태그의 왼쪽에 중첩되어 위치 - 윗부분에 배치 */
#leftImg {
	position: absolute;
	display: inline-block;
	top: 165px;
	z-index: 100;
	left: 0px;
}
/* 오른쪽 화살표 이미지 태그 - 슬라이더 이미지 태그의 오른쪽에 중첩되어 위치 - 윗부분에 배치 */
#rightImg {
	position: absolute;
	display: inline-block;
	top: 165px;
	z-index: 100;
	right: 0px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<div id="slider">
		<div id="sliderContainer">
			<img src="http://www.bant.co.kr/data/banner/39?20220307221657" width="100%"> 
			<img src="http://www.bant.co.kr/data/banner/27?20220331122419" width="100%">
			<img src="http://www.bant.co.kr/data/banner/30?20220304011958" width="100%"> 
			<img src="http://www.bant.co.kr/data/banner/37?20220302191819" width="100%"> 
		</div>
		<img src="left.png" id="leftImg">
		<img src="right.png" id="rightImg">
	</div>
	<script type="text/javascript">
	//모든 슬라이더 이미지 태그를 검색하여 변수에 저장
	var $images=$("#sliderContainer").find("img");
	
	//검색된 모든 슬라이더 이미지 태그를 저장하기 위한 Array 객체 생성
	var imageArray=new Array();
	
	//Array 객체에 검색된 모든 슬라이더 이미지 태그를 요소값으로 저장
	$images.each(function() {//명시적 반복을 이용한 일괄처리
		imageArray.push($(this));//배열 요소를 추가하여 이미지 태그 저장
	});
	//모든 슬라이더 이미지 태그를 슬라이더 출력 영역 왼쪽에 위치하여 숨겨지도록 설정
	$images.css("left",-1920);
	//
	//첫번째 슬라이더 이미지 태그를 슬라이더 출력 영역에 위치하여 출력되도록 설정
	$images.eq(0).css("left",0);
	
	//4초마다 슬라이더 영역에 출력될 슬라이더 이미지 태그를 변경하도록 처리하는 함수
	function sliding() {
		return setInterval(function() {
			//Array 객체의 첫번째 요소값(슬라이더 이미지 태그)를 변수에 저장
			var $currentImage=imageArray[0];//슬라이더 영역에 출력된 현재 이미지
			
			//Array 객체의 두번째 요소값(슬라이더 이미지 태그)를 변수에 저장
			var $nextImage=imageArray[1];//슬라이더 영역에 출력될 다음 이미지
			
			//다음 슬라이더 이미지 태그를 슬라이더 출력 영역 왼쪽에 위치하여 숨겨지도록 설정
			$nextImage.css("left",-1920);
			
			//현재 출력된 슬라이더 이미지 태그를 슬라이더 출력 영역의 오른쪽으로 이동하여 숨겨지도록 설정
			$currentImage.stop().animate({"left":1920}, 1500);
			
			//다음에 출력될 슬라이더 이미지 태그를 슬라이더 출력 영역에 위치되도록 이동 - 출력
			$nextImage.stop().animate({"left":0}, 1500);
			
			//Array 객체의 첫번째 요소를 제거하고 제거된 요소값(슬라이더 이미지 태그)을 반환받아 저장
			$removeImage=imageArray.shift();
			//
			//Array 객체의 마지막 요소를 추가하고 요소값(슬라이더 이미지 태그)을 저장
			imageArray.push($removeImage);
		}, 4000);
	}
	//마우스 커서가 그림에 위치하면 이동하는거를 멈추게하는 코드
	var intervalId=sliding();
	//
	//슬라이더 태그에 마우스 커서가 진입한 경우 콜백함수 호출
	$("#slider").mouseover(function() {
		clearInterval(intervalId);//setInterval() 함수 실행 취소
	});
	//슬라이더 태그에서 마우스 커서가 벗어난 경우 콜백함수 호출
	$("#slider").mouseout(function() {
		intervalId=sliding();
	});
	//화살표 이미지 태그에 마우스 커서가 진입한 경우 콜백함수 호출
	$("#arrowContainer img").mouseover(function() {
		clearInterval(intervalId);
	});
//오른쪽 화살표 이미지를 클릭한 경우 콜백함수 호출
	$("#rightImg").click(function() {
		var $currentImage=imageArray[0];
		var $nextImage=imageArray[1];
		$nextImage.css("left",-2000);
		$currentImage.stop().animate({"left":1920}, 1500);
		$nextImage.stop().animate({"left":0}, 1500);
		$removeImage=imageArray.shift();
		imageArray.push($removeImage);
	});
//왼쪽 화살표 이미지를 클릭한 경우 콜백함수 호출
	$("#leftImg").click(function() {
		var $currentImage=imageArray[0];
		var $previousImage=imageArray[imageArray.length-1];
		$previousImage.css("left",2000);
		$currentImage.stop().animate({"left":-1920}, 1500);
		$previousImage.stop().animate({"left":0}, 1500);
		$removeImage=imageArray.pop();
		imageArray.unshift($removeImage);
	});		
	</script>
</body>
</html>