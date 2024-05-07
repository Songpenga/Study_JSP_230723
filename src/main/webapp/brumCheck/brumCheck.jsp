<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>

   $(function(){

   });

	function fn_close_biz() {
		//사업자 등록 번호 존재여부 체크
		
			if($('#brnum1').val() == '' || $('#brnum1').val() == undefined || $('#brnum1').val() == null) {
				$.alert('사업자등록번호를 입력해 주시기 바랍니다.');
				return false;
			}
			if($('#brnum2').val() == '' || $('#brnum2').val() == undefined || $('#brnum2').val() == null) {
				$.alert('사업자등록번호를 입력해 주시기 바랍니다.');
				return false;
			}
			if($('#brnum3').val() == '' || $('#brnum3').val() == undefined || $('#brnum3').val() == null) {
				$.alert('사업자등록번호를 입력해 주시기 바랍니다.');
				return false;
			}
		
		
		var data = { "b_no" : [ $('#brnum1').val() + $('#brnum2').val() + $('#brnum3').val() ]};
	    var pData = new Object();
		$.ajax({
			url : "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey={key}",
			type : "POST",
			data : JSON.stringify(data), // json 을 string으로 변환하여 전송
			dataType : "JSON",
			contentType : "application/json",
			accept : "application/json",
			success : function(result) {
				console.log(result.data[0]);
				if (result.data[0].b_stt_cd === "01") {
					$('#txtCLOSE_BIZ_YN').val(result.data[0].b_stt);
					$('#hidCLOSE_BIZ_YN').val(result.data[0].b_stt_cd);
					alert('정상입니다.');
				} else if ((result.data[0].b_stt_cd === null) || (result.data[0].b_stt_cd == "")) {
					$.alert(result.data[0].tax_type);
				} else {
					$('#txtCLOSE_BIZ_YN').val(result.data[0].b_stt);
					$('#hidCLOSE_BIZ_YN').val(result.data[0].b_stt_cd);
					alert('휴폐업된 사업자는 회원가입 하실 수 없습니다.');
				}

			},
			error : function(result) {
				console.log("error 2 : " + result.responseText); //responseText의 에러메세지 확인
			}
		});
		
	}
</script>
    	<div class="section">
            <form id="formSearch" method="post" action="">
            <div class="test">
            	<table class="table1">
                	<colgroup>
                    	<col style="width:20%;">
                     	<col style="width:80%;">
                   </colgroup>
                <tbody>
					<tr>
						<th><span class="factor">*</span>사업자등록번호</th>
						<td colspan="3">
						<ul class="brnum_list">								
							<li>
								<input type="text" id="brnum1" name="BRNUM1" maxlength="3" class="clnipt" style="width: 20%" value="${fn:substring(P_BRUM,0,3)}" > <span class="bar">-</span> 
								<input type="text" id="brnum2" name="BRNUM2" maxlength="2" class="clnipt" style="width: 20%" value="${fn:substring(P_BRUM,3,5)}" > <span class="bar">-</span> 
								<input type="text" id="brnum3" name="BRNUM3" maxlength="5" class="clnipt" style="width: 20%" value="${fn:substring(P_BRUM,5,10)}" >
							</li>		
						</ul>
								<button type="button" onclick="javascript:fn_close_biz();">휴폐업조회</button>											
								<input type="hidden" id="txtCLOSE_BIZ_YN" name="txtCLOSE_BIZ_YN" class="clnipt">
						</td>

					</tr>                
                </tbody>
                </table>
            </div>
        </form>
     </div>     