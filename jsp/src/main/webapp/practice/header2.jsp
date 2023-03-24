<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="top_banner" >
	<div class="pc">
		<button class="top_banner_close">오늘 하루 열지 않기&nbsp;&nbsp;
			<i class="fa fa-times-circle" aria-hidden="true"></i>
		</button>
		
		<div class="bn_banner_x">
			<a href="bbs/boarda88a.html?bn_id=13">
				<img src="/project4/images/banner.png" alt="탑배너" width="1430" height="80">
			</a>
		</div>	
	</div>
</section>

<header id="mobile_hd">

    <script>
	 function catetory_menu_fn( is_open ){
		var $cagegory = $("#mobile_category");

		if( is_open ){
			$cagegory.fadeIn();
			$("body").addClass("is_hidden");
		} else {
			$cagegory.fadeOut();
			$("body").removeClass("is_hidden");
		}
	}
   </script>

 </header>

<!-- header --> 
<div id="hd" style="z-index: 1000">
    <h1 id="hd_h1">반티세트</h1>
    <div id="skip_to_container"><a href="#container">본문 바로가기</a></div>

    <div id="tnb">
        <h3>회원메뉴</h3>    
		<ul>
			<li class="tnb_left"><a href="bbs/faq.html">FAQ</a></li>
			<li class="tnb_left"><a href="bbs/qalist.php">1:1문의</a></li>			
			<li class="tnb_left"><a href="bbs/board6b3d.html?bo_table=qa"><font color="darkgoldenrod"><b>문의(견적요청)</b></font></a></li>
			<li class="tnb_left"><a href="bbs/board349c.html?bo_table=order"><font color="red"><b>인쇄파일등록 게시판</b></font></a></li>
			<li><a href="bbs/board9f84.html?bo_table=pay"><font color="orenge"><b>분할결제 요청</b></font></a></li>
			<li class="tnb_left"><a href="bbs/boardef18.html?bo_table=mk"><font color="blue"><b>인쇄/폰트 안내</b></font></a></li>
            <li class="tnb_left"><a href="shop/personalpay.html">개인결제</a></li> 

            <li class="tnb_cart"><a href="index.jsp?menugroup=cart&menu=cart_list"><i class="fa fa-shopping-basket" aria-hidden="true"></i> 장바구니 0</a></li>            
            <li><a href="bbs/logineceb.html">마이쇼핑</a></li>
            <li><a href="bbs/register.html">회원가입</a></li>
            <li><a href="bbs/login00f2.html?url=%2F"><b>로그인</b><img src="/project4/images/sns_naver_150.png"><img src="/project4/images/sns_kakao_150.png"></a></li>
        </ul>
	</div>
	
	<div id="hd_wrapper">
        <div id="logo">
        	<a href="shop/index.html"><img src="/project4/images/logo_img.png" alt="반티세트"></a>
        </div>

        <div id="hd_sch">
            <h3>쇼핑몰 검색</h3>
            <form name="frmsearch1" action="http://bant.co.kr/shop/search.php" onsubmit="return search_submit(this);">
            	<label for="sch_str" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
            	<input type="text" name="q" value="" id="sch_str" required>
            	<button type="submit" id="sch_submit"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
            </form>
            
            <script>
            function search_submit(f) {
                if (f.q.value.length < 2) {
                    alert("검색어는 두글자 이상 입력하십시오.");
                    f.q.select();
                    f.q.focus();
                    return false;
                }
                return true;
            }
            </script>
        </div>
        
        <div id="kakao_consult">
			<a href="shop/bannerhit6b1d.php?bn_id=6"><img src="/project4/images/kakao_consult.png" alt="반티세트 카카오톡 상담" width="220" height="90" align="right"></a>
        </div>
    </div>
</div>



<!-- 쇼핑몰 카테고리 시작 { -->
    <div id="hd_menu">		
		<div class="hd_menu_all">
			
			<ul class="ul_1st">
				<li>
					<button type="button" id="menu_open"><i class="fa fa-bars" aria-hidden="true"></i></button>
				</li>
				<li>
					<a href="shop/listtype728f.html?type=4">BEST</a>
				</li>
	    		<li >
					<a href="shop/list8ccd.html?ca_id=n1" >반티세트</a>
				</li>
				<li >
					<a href="shop/list8c60.html?ca_id=m5" >군복반티</a>
				</li>
				<li >
					<a href="shop/lista5c7.html?ca_id=o9" >코스프레반티</a>
				</li>
				
				
				<li >
					<a href="shop/list7a9b.html?ca_id=n2" >스포츠반티<i class="fa fa-angle-down" aria-hidden="true"></i></a>
					
					
					<ul class="ul_2nd">			
						<li>
							<a href="shop/list9b62.html?ca_id=n210"><i class="fa fa-angle-right" aria-hidden="true"></i> 야구복 반티</a>
						</li>
						<li>
							<a href="shop/listdd57.html?ca_id=n220"><i class="fa fa-angle-right" aria-hidden="true"></i> 하키반티</a>
						</li>
						<li>
							<a href="shop/list5fa1.html?ca_id=n230"><i class="fa fa-angle-right" aria-hidden="true"></i> 배구반티(하이큐)</a>
						</li>
						<li>
							<a href="shop/list9b09.html?ca_id=n240"><i class="fa fa-angle-right" aria-hidden="true"></i> 축구복 반티</a>
						</li>
						<li>
							<a href="shop/list0980.html?ca_id=n250"><i class="fa fa-angle-right" aria-hidden="true"></i> 농구복 반티</a>
						</li>
						<li>
							<a href="shop/listc399.html?ca_id=n260"><i class="fa fa-angle-right" aria-hidden="true"></i> 도복 반티</a>
						</li>
					</ul>
				</li>
				
				
				<li >
					<a href="shop/list906f.html?ca_id=z1" >유아/아동 반티</a>
				</li>
				
				
				<li >
					<a href="shop/listd208.html?ca_id=p9" >맨투맨/후드티 반티<i class="fa fa-angle-down" aria-hidden="true"></i></a>
					
					<ul class="ul_2nd">			
						<li>
							<a href="shop/listd379.html?ca_id=p910"><i class="fa fa-angle-right" aria-hidden="true"></i> 맨투맨 반티</a>
						</li>
						<li>
							<a href="shop/lista1cb.html?ca_id=p920"><i class="fa fa-angle-right" aria-hidden="true"></i> 후드티 반티</a>
						</li>
					</ul>
				</li>
				
				
				<li >
					<a href="shop/list9841.html?ca_id=n4" >상의 반티</a>
				</li>
				<li >
					<a href="shop/list4d4b.html?ca_id=n6" >하의 반티</a>
				</li>
				<li >
					<a href="shop/list1550.html?ca_id=n5" >소품/악세사리</a>
				</li>
				<li >
					<a href="shop/listf577.html?ca_id=z9" >컨셉별 분류<i class="fa fa-angle-down" aria-hidden="true"></i></a>
					
					<ul class="ul_2nd">			
						<li>
							<a href="shop/list13d2.html?ca_id=z920"><i class="fa fa-angle-right" aria-hidden="true"></i> 교련복 반티</a>
						</li>
						<li>
							<a href="shop/list9146.html?ca_id=z940"><i class="fa fa-angle-right" aria-hidden="true"></i> 복고풍 반티</a>
						</li>
						<li>
							<a href="shop/list267e.html?ca_id=z950"><i class="fa fa-angle-right" aria-hidden="true"></i> 죄수복 반티</a>
						</li>
						<li>
							<a href="shop/listf3f1.html?ca_id=z960"><i class="fa fa-angle-right" aria-hidden="true"></i> 점프수트 반티</a>
						</li>
						<li>
							<a href="shop/list94a6.html?ca_id=z970"><i class="fa fa-angle-right" aria-hidden="true"></i> 새마을 반티</a>
						</li>
						<li>
							<a href="shop/list26d3.html?ca_id=z980"><i class="fa fa-angle-right" aria-hidden="true"></i> 용포 반티</a>
						</li>
						<li>
							<a href="shop/listcbcd.html?ca_id=z910"><i class="fa fa-angle-right" aria-hidden="true"></i> 경찰반티</a>
						</li>
						<li>
							<a href="shop/list83b5.html?ca_id=z990"><i class="fa fa-angle-right" aria-hidden="true"></i> 잠옷 반티</a>
						</li>
						<li>
							<a href="shop/listaea8.html?ca_id=z930"><i class="fa fa-angle-right" aria-hidden="true"></i> 조교 반티</a>
						</li>
						<li>
							<a href="shop/list4617.html?ca_id=z9a0"><i class="fa fa-angle-right" aria-hidden="true"></i> 환자복 반티</a>
						</li>
						<li>
							<a href="shop/list5a8f.html?ca_id=z9b0"><i class="fa fa-angle-right" aria-hidden="true"></i> 오징어게임 반티</a>
						</li>
						<li>
							<a href="shop/listfe3d.html?ca_id=z9c0"><i class="fa fa-angle-right" aria-hidden="true"></i> 야쿠자 가운 반티</a>
						</li>
						<li>
							<a href="shop/list4489.html?ca_id=z9d0"><i class="fa fa-angle-right" aria-hidden="true"></i> 팀조끼 반티</a>
						</li>
					</ul>	
				</li>
			</ul>		
		</div>
	</div>