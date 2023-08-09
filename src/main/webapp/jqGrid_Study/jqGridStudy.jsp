<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/js/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="/jqGrid/css/ui.jqgrid.css" />
  
<script type="text/javascript" src="/js/common/jquery/jquery-3.2.1.min.js"></script>
<script src="/jqGrid/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="/jqGrid/js/minified/jquery.jqGrid.min.js" type="text/javascript"></script>

<title>Insert title here</title>

<%-- 2. jqGrid 설정
jqGrid를 설정해줄때 colNames와 colModel을 꼭 설정해주도록 하자.
추가 옵션에 따라서 colNames는 생략이 가능하기는 하지만.. --%>

<script>
var searchResultColNames =  ['게시글관리번호', '번호', '제목', '작성자', '날짜', '조회수'];
var searchResultColModel =  [
                  {name:'bbsMgtNo',  index:'bbsMgtNo',  align:'center', hidden:true},
                  {name:'bbsNum',    index:'bbsNum',    align:'left',   width:'12%'},
                  {name:'bbsTitle',  index:'bbsTitle',  align:'center', width:'50%'},
                  {name:'bbsWriter', index:'bbsWriter', align:'center', width:'14%'},
                  {name:'bbsDate',   index:'bbsDate',   align:'center', width:'12%'},
                  {name:'bbsHit',    index:'bbsHit',    align:'center', width:'12%'}
                ];

$(function() {
  $("#mainGrid").jqGrid({
    height: 261,
    width: 1019,
    colNames: searchResultColNames,
    colModel: searchResultColModel,
    rowNum : 10,
    pager: "pager" 
  });
});

function searchData(mode) {

	  var postData = objConvertJson($("#fieldSurvForm")); //form 데이터 json으로 변경

	  $("#mainGrid").jqGrid({
	    url : "/board/searchData.do",
	    datatype : "JSON",
	    postData : postData,
	    mtype : "POST",
	    colNames: searchResultColNames,
	    colModel: searchResultColModel,
	    rowNum : 10,
	    pager: "#pager",
	    height: 261,
	    width: 1019,
	    caption : "게시글 목록"
	  });
	}
</script>
</head>
<body>
<%-- 1. dom 영역 설정 :body영역에서 jqGrid를 표출할 영역을 설정해주어야한다 --%>
  <div class="tableWrap">
    <table id="mainGrid"></table>
    <div id="pager"></div>    
  </div>
</body>
</html>