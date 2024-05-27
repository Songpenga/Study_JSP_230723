<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="energy.mdul.base.User"%>

<%
	String sysuri = request.getRequestURI();
%>

		<ul class="tab_menu5">
				<li id = "tab1" class="tabl <c:if test="${viewId eq '01'}">selected</c:if>">
					<a href="#" onclick="tab('1'); return false;">TAB1</a>
				</li>
					<li id = "tab2" class="tabl <c:if test="${viewId eq '02'}">selected</c:if>">
						<a href="#" onclick="tab('2'); return false;">TAB2</a>
				</li>
		</ul>
		
<script type="text/javascript">
	
	tab = function(c) {
		 
		var sysuri = '<%= sysuri %>';
		var url = '';
		
		/* 404 오류 원인  : url 틀림*/
		if (c == '1') { 		
			url = "<c:url value='/tab/tab_01/page_010_pop'/>";
	   	  //url = "<c:url value='/tab/tab_01/page_010_pop.do'/>";
		} else if (c == '2') { 
			url = "<c:url value='/tab/tab_01/page_020_pop'/>";	
		  //url = "<c:url value='/tab/tab_01/page_020_pop.do'/>";
 		}
		
		if ( sysuri.indexOf(url) != -1 ) {
			return false;
		}
		
		$('#form').prop('action', url);
		$('#form').submit();
	}

</script>
