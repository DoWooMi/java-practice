<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	
	

%>

<style type="text/css">
.chk_box input[type="checkbox"]:checked  {
    background: url(../img/chk.png) no-repeat 50% 50% #3a8afd;
    border-color: #1471f6;
    border-radius: 3px;
}
.chk_box input[type="checkbox"] {
    position: absolute;
    top: 2px;
    left: 0;
    width: 15px;
    height: 15px;
    display: block;
    margin: 0;
    border: 1px solid #d0d4df;
}
*, :after, :before {
    box-sizing: border-box;
}
.chk_box input[type="checkbox"]:checked + label {
    color: #000;
}
.chk_box input[type="checkbox"] + label {
    padding-left: 20px;
}
.chk_box input[type="checkbox"] + label {
    position: relative;
    padding-left: 20px;
}
.tbl_head03 td {
    background: #fff;
    background-clip: padding-box;
    padding: 25px 15px;
    border-top: 1px solid #ccd2d9;
    border-left: 1px solid #f6f6f6;
    line-height: 1.5em;
    word-break: break-all;
}

.td_chk {
    width: 30px;
    text-align: center;
}
td {
    margin: 0;
    padding: 0;
    font-size: 13px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 400;
    letter-spacing: -0.02em;
}
.tbl_wrap table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
}
label {
    cursor: default;
}
table {
    text-indent: initial;
}
li {
    display: list-item;
    line-height: 1.6em;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 400;
    letter-spacing: -0.02em;
    list-style: none;
}
#sod_bsk #sod_bsk_tot li {
    float: left;
    font-size: 1.167em;
    border-left: 1px solid #ddd;
}
#sod_bsk #sod_bsk_tot li:first-child {
	
    border: 0;
}
@media (max-width: 480px)
#sod_bsk #sod_bsk_tot li {
    width: 50%;
    padding: 10px;
    text-align: right;
    height: auto;
}
@media (max-width: 768px)
#sod_bsk #sod_bsk_tot li[class~=sod_bsk_dvr] {
    background: #fff !important;
    color: #000;
}
#sod_bsk #sod_bsk_tot li[class~=sod_bsk_pt] {
    background: #f8f8f8 !important;
    color: #000;
}
#sod_bsk #sod_bsk_tot li {
    border-left: 1px solid #ddd;
}
#sod_bsk #sod_bsk_tot li {
    float: left;
    width: 33.333%;
    text-align: right;
    padding: 25px;
    font-size: 1.167em;
}
#sod_bsk #sod_bsk_tot .sod_bsk_cnt {
    width: 33.335%;
    background: #212a37;
    color: #fff;
    text-align: right;
    padding: 25px;
    font-size: 1.167em;
}
</style>
<div id="wrapper" style="clear:both;">
	<div id="container">
		<div class="shop-content">
			<div id="wrapper_title">장바구니</div>
			
<script src="http://bant.co.kr/js/shop.js"></script>
<script src="http://bant.co.kr/js/shop.override.js"></script>	
		
<div id="sod_bsk" class="od_prd_list">
	<form action="" name="frmcartlist" id="sod_bsk_list" class="2017_renewal_itemform" method="post">
		<div class="tbl_head03 tbl_wrap">
			<table>
				<thead>
					<tr>
						<th scope="col" class="chk_box">
							<input type="checkbox" name="ct_all" value="1" id="ct_all" checked="checked" class="selec_chk">
							<label for="ct_all">
								<span></span>
								<b class="sound_only">상품전체</b>
							</label>
						</th>
						<th scope="col">상품명</th>	
						<th scope="col">총수량</th>	
						<th scope="col">판매가</th>	
						<th scope="col">포인트</th>	
						<th scope="col">배송비</th>	
						<th scope="col">소계</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7" class="empty_table">장바구니에 담긴 상품이 없습니다.</td>
							
						<td class="td_chk chk_box">
							<input type="checkbox" name="ct_chk[0]" id="ct_chk_0" value="1" checked="checked" class="selec_chk">
							<label for="ct_chk_0">
							<span></span>
							<b class="sound_only">상품</b>
							</label>
						</td>
						<td class="td_prd">
							<div class="sod_img">
								<a href="">
									<img src="" width="80" height="80" alt="title">
								</a>
							</div>
							<div class="sod_name">
								<input type="hidden" name="it_id[0]" value="BG420">
								<input type="hidden" name="it_name[0]" value="BG420">
									<a href="" class="prd_name">
										<b>삐에로반티</b>
									</a>
								<div class="sod_opt">
									<ul>
										<li>선택 삐에로</li>
										<li>할인</li>
									</ul>
								</div>
								<div class="sod_option_btn">
									<button type="button" class="mod_options">선택사항수정</button>
								</div>
							</div>		
						</td>	
						<td class="td_num">num</td>	
						<td class="td_numbig">price</td>	
						<td class="td_numbig">qty</td>	
						<td class="td_dvr">무료배송</td>	
						<td class="td_numbig text_right"><span id="sell_price_0" class="total_prc">total</span></td>	
					</tr>
				</tbody>		
			</table>
			<div class="btn_cart_del">
				<button type="button" onclick="return form_check('seldelete');">선택삭제</button>
				<button type="button" onclick="return form_check('alldelete');">비우기</button>
			</div>
		</div>
		<div id="sod_bsk_tot">
			<ul>
				<li class="sod_bsk_dvr"><span>배송비</span><strong>0</strong>원</li>
			</ul>
			<ul>
				<li class="sod_bsk_pt"><span>포인트</span><strong>0</strong>점</li>
			</ul>
			<ul>
				<li class="sod_bsk_cnt"><span>총금액</span><strong>300</strong>원</li>
			</ul>
         </div>
		<div id="sod_bsk_act">
			<input type="hidden" name="url" value="index.jsp">
			<input type="hidden" name="records" value="2">
			<input type="hidden" name="act" value="index.jsp">
			<a href="index.jsp" class="btn01">쇼핑 계속하기</a>
			<button type="button" onclick="return form_check('buy');" class="btn_submit">주문하기</button>
		</div>	
	</form>	
</div>	
</div>
</div>
</div>



<script>
$(function() {
    var close_btn_idx;

    // 선택사항수정
    $(".mod_options").click(function() {
        var it_id = $(this).closest("tr").find("input[name^=it_id]").val();
        var $this = $(this);
        close_btn_idx = $(".mod_options").index($(this));

        $.post(
            "./cartoption.php",
            { it_id: it_id },
            function(data) {
                $("#mod_option_frm").remove();
                $this.after("<div id=\"mod_option_frm\"></div><div class=\"mod_option_bg\"></div>");
                $("#mod_option_frm").html(data);
                price_calculate();
            }
        );
    });

    // 모두선택
    $("input[name=ct_all]").click(function() {
        if($(this).is(":checked"))
            $("input[name^=ct_chk]").attr("checked", true);
        else
            $("input[name^=ct_chk]").attr("checked", false);
    });

    // 옵션수정 닫기
    $(document).on("click", "#mod_option_close", function() {
        $("#mod_option_frm, .mod_option_bg").remove();
        $(".mod_options").eq(close_btn_idx).focus();
    });
    $("#win_mask").click(function () {
        $("#mod_option_frm").remove();
        $(".mod_options").eq(close_btn_idx).focus();
    });

});

function fsubmit_check(f) {
    if($("input[name^=ct_chk]:checked").length < 1) {
        alert("구매하실 상품을 하나이상 선택해 주십시오.");
        return false;
    }

    return true;
}

function form_check(act) {
    var f = document.frmcartlist;
    var cnt = f.records.value;

    if (act == "buy")
    {
        if($("input[name^=ct_chk]:checked").length < 1) {
            alert("주문하실 상품을 하나이상 선택해 주십시오.");
            return false;
        }

        f.act.value = act;
        f.submit();
    }
    else if (act == "alldelete")
    {
        f.act.value = act;
        f.submit();
    }
    else if (act == "seldelete")
    {
        if($("input[name^=ct_chk]:checked").length < 1) {
            alert("삭제하실 상품을 하나이상 선택해 주십시오.");
            return false;
        }

        f.act.value = act;
        f.submit();
    }

    return true;
}




$("#checkdelete").click(function() {
	if($(".selec_chk").filter(":checked").length==0) {
		$("#message").text("선택된 상품이 하나도 없습니다.");
		return;
	}
	
	$("#sod_bsk_list").attr("action", "<%=request.getContextPath()%>/index.jsp?menugroup=cart&menu=cart_remove_action");
	$("#sod_bsk_list").attr("method","post");
	$("#sod_bsk_list").submit();
});


$("#alldelete").click(function() {
	if($(".selec_chk").filter(":checked").length==0) {
		$("#message").text("장바구니에 담긴 상품이 없습니다.");
		return;
	}
	
	$("#sod_bsk_list").attr("action", "<%=request.getContextPath()%>/index.jsp?menugroup=cart&menu=cart_remove_action");
	$("#sod_bsk_list").attr("method","post");
	$("#sod_bsk_list").submit();
});
</script>

