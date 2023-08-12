<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="/js/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="../jqGrid_Study/jqGrid/css/ui.jqgrid.css" />

 <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script src="../jqGrid_Study/jqGrid/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="../jqGrid_Study/jqGrid/js/minified/jquery.jqGrid.min.js" type="text/javascript"></script>

<title>Insert title here</title>

<%-- 2. jqGrid 설정 jqGrid를 설정해줄때 colNames와 colModel을 꼭
    설정해주도록 하자. 추가 옵션에 따라서 colNames는 생략이 가능하기는
    하지만.. --%>

<script>
	$(document).ready(
			function() {
				var mydata = [ {
					date : "2007-10-01",
					name : "test",
					id : "id",
					product : "상품1",
					amount : "10.00",
					total : "210.00",
				}, {
					date : "2007-10-02",
					name : "test2",
					id : "id2",
					product : "상품1",
					amount : "20.00",
					total : "320.00",
				}, {
					date : "2007-09-01",
					name : "test3",
					id : "id3",
					product : "상품1",
					amount : "30.00",
					total : "430.00",
				}, {
					date : "2007-10-04",
					name : "test",
					id : "id",
					product : "상품1",
					amount : "10.00",
					total : "210.00",
				}, {
					date : "2007-10-05",
					name : "test2",
					id : "id2",
					product : "상품1",
					amount : "20.00",
					total : "320.00",
				}, {
					date : "2007-09-06",
					name : "test3",
					id : "id3",
					product : "상품2",
					amount : "30.00",
					total : "430.00",
				}, {
					date : "2007-10-04",
					name : "test",
					id : "id",
					product : "상품2",
					amount : "10.00",
					total : "210.00",
				}, {
					date : "2007-10-03",
					name : "test2",
					id : "id2",
					product : "상품2",
					amount : "20.00",
					total : "320.00",
				}, {
					date : "2007-09-01",
					name : "test3",
					id : "id3",
					product : "상품2",
					amount : "30.00",
					total : "430.00",
				}, {
					date : "2007-10-01",
					name : "test",
					id : "id",
					product : "상품2",
					amount : "10.00",
					total : "210.00",
				}, {
					date : "2007-10-02",
					name : "test2",
					id : "id2",
					product : "상품2",
					amount : "20.00",
					total : "320.00",
				}, {
					date : "2007-09-01",
					name : "test3",
					id : "id3",
					product : "상품2",
					amount : "30.00",
					total : "430.00",
				}, {
					date : "2007-10-04",
					name : "test",
					id : "id",
					product : "상품2",
					amount : "10.00",
					total : "210.00",
				}, {
					date : "2007-10-05",
					name : "test2",
					id : "id2",
					product : "상품2",
					amount : "20.00",
					total : "320.00",
				}, {
					date : "2007-09-06",
					name : "test3",
					id : "id3",
					product : "상품2",
					amount : "30.00",
					total : "430.00",
				}, {
					date : "2007-10-04",
					name : "test",
					id : "id",
					product : "상품2",
					amount : "10.00",
					total : "210.00",
				}, {
					date : "2007-10-03",
					name : "test2",
					id : "id2",
					product : "상품2",
					amount : "20.00",
					total : "320.00",
				}, {
					date : "2007-09-01",
					name : "test3",
					id : "id3",
					product : "상품2",
					amount : "30.00",
					total : "430.00",
				}, {
					date : "2007-09-01",
					name : "test4",
					id : "id4",
					product : "상품2",
					amount : "30.00",
					total : "430.00",
				}, ];

				$("#list").jqGrid({
					datatype : "local",
					data : mydata,
					colNames : [ "날짜", "아이디", "이름", "상품", "가격", "합계", ],
					colModel : [ {
						name : "date",
						index : "date",
						width : 90,
						align : "center"
					}, {
						name : "name",
						index : "name",
						width : 100,
						align : "center",
					}, {
						name : "id",
						index : "id",
						width : 150,
						align : "center",
						sortable : false,
					}, {
						name : "product",
						index : "product",
						width : 80,
						align : "center",
					}, {
						name : "amount",
						index : "amount",
						width : 80,
						align : "center",
					}, {
						name : "total",
						index : "total",
						width : 80,
						align : "center",
					}, ],
					autowidth : true,
					rownumbers : true,
					multiselect : true,
					pager : "#pager",
					rowNum : 10,
					rowList : [ 10, 20, 50 ],
					sortname : "id",
					sortorder : "asc",
					height : 250,
				});

				$(window).on(
						"resize.jqGrid",
						function() {
							$("#list").jqGrid(
									"setGridWidth",
									$("#list").parent().parent().parent()
											.parent().parent().width());
						});
				$(".jarviswidget-fullscreen-btn").click(
						function() {
							setTimeout(function() {
								$("#list").jqGrid(
										"setGridWidth",
										$("#list").parent().parent().parent()
												.parent().parent().width());
							}, 100);
						});
			});
</script>
<%-- 1. dom 영역 설정 :body영역에서 jqGrid를 표출할 영역을
    설정해주어야한다 --%>
<table id="list"></table>
<div id="pager"></div>
</head>
</html>
