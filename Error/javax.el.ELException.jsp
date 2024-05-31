<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
	$(document).ready(function() {
		
		
		
	});
	
	/* javax.el.ELException: Cannot convert [[object Object]] of type [class java.lang.String] to [class java.lang.Long] */
	function fn_TEST() {

		
		var ment = 'TEST?';
		var ment2 = 'CHECK!';
		
		var pData = new Object();
		pData = fn_formData('form');
			btnEevent(ment, function(result) {
				$('#myModal3').show();
				if (result) {
					$.ajax({
						type 	 : "POST",
						url 	 : '',
						data 	 : pData,
						dataType : "html",
						success  : function(result) {
								
								/* SCOPE 오류로 예상 */
 							//var test1 = result.split(",")[1]; -- 이경우 P_APP_NO이 OBJECT로 잡힘
							//var test2  = result.split(",")[2];			 
							if (msg == 'OK') {
								
							var test1 = result.split(",")[1];
							var test2 = result.split(",")[2];								
								btnEeventReturn('plz....', '', function(c) {
									if(c){
											$('#P_NO').val(test1); //위치를 변경해 오류 해결
											$('#P_TEST').val(test2);
											opener.getData();
											
									PostSumbit('<c:url value='/CST/RF_01/RF_01_01_020_pop.do'/>', fn_formData('form'));
									}
								});
								
							} else {
								$.alert(result);
							}

						},
						error : function(request, status, error) {
							console.log("javaScript error : " + error + "request :" + request + "status : " + status);
						},
						complete : function() {
							
							$('#myModal3').hide();
						}
					});
				}
				$('#myModal3').hide();
			});
		}
	
</script>

<div class="container">
	<div class="section">
		<form id="form" method="post" action="">
				<!-- type="hidden"  -->
	    		<input id="P_NO"		 type="hidden" 			name="P_NO"  	    value="<c:out value="${P_NO}"/>"/>
	    		<input id="P_TEST"     	 type="hidden" 			name="P_TEST"       value="<c:out value="${P_APP_NO}"   />"/>    
		</form>
		<br>		        	
	</div>
</div>