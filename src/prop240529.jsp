<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
	$(document).ready(function() {
		
	   	
    	$('select[name="Select_change"]').on('change', function(){    
			  if($(this).val() == "4") {
				 $("#TEXT_prop").prop('disabled', false);
			  }else{
				 console.log('else');
				 $('#TEXT_prop').prop('disabled', true);
			  }
		   });	   	
    	
	});
	
</script>

<div class="">
	<div class="">
		<form id="" method="post" action="">

	<div class="">
	<table>
				<tbody>
		    		<tr> 
		    			<th colspan="2"><span class="essential">*</span>평가종류</th>
		    			<td>
		    				<select id="Select_change" name="Select_change" style="width:50%;">
		    				</select>								
						</td>					
		    		</tr>
					<tr>
		    			<th colspan="2">미제출사유</th> <!-- 평가종류 해당없음을 선택한 기관은 사유 적음 -->
		    			<td><input type="text" id="TEXT_prop" name="TEXT_prop" value="" disabled >								    			
		    		</tr>	
		    	</tbody>
	</table>		    	
		    </div>	    		
	</form>	
	</div>
</div>