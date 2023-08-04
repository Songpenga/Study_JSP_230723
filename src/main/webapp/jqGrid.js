// jqGrid 라이브러리 추가
<link rel="stylesheet" type="text/css" media="screen" href="../resources/css/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../resources/css/ui.jqgrid.css" />
 
// jQuery js파일을 jqGrid js파일보다 상위에 선언해야 제대로 동작함
<script src="../resources/js/jquery-1.11.0.min.js" type="text/javascript"></script> 
<script src="../resources/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="../resources/js/jquery.jqGrid.min.js" type="text/javascript"></script>

// FORM 태그로 감싼 모든 Submit 데이터
var formData = $('#FORM1').serialize();
 
// grid 란 id 값을 가진 테이블에 jqGrid 생성
$("#grid").jqGrid({
	url : "<%=APP_ROOT%>/auth/root/bbs/getList",
        postData : formData,
        datatype: "json",
        /*
            // colModel 옵션들
            name : 출력할 데이터의 이름입니다. 서버에서 받은 데이터의 변수명과 일치해야 함.
            index : 컬럼 정렬 시 서버에 넘어가는 값이다. index값을 설정하지 않으면 name값이 넘어간다.
            width : 컬럼의 넓이를 설정.
            align : 컬럼 내 데이터의 정렬을 설정.
            hidden : 데이터값은 설정하고 화면에서 보이고 싶지 않을 때 사용.
            formatter : 데이터로 들어온 값을 특정 형식으로 변환해서 보여줄 수 있다.
            frozen : true or false // 이 옵션을 넣은경우 그리드를 전부다 그린뒤 $("#gridid").jqGrid('setFrozenColumns'); 함수를 호출해줘야한다. + reload 까지도
        */
        colModel : [
            {label : "KEY",name : "ID", width:120, hidden: true},
            {label : "ID", name : "ID", align:'center'},
            {label : "나이", name : "AGE", align:'center', formatter : "integer", sorttype : "integer"},
            {label : "이름", name : "NAMES", align:'center', editable:true, edittype:'text'
                , editoptions:{
                    
                }						
            },
            
        ],
        formatter: {
            integer: {thousandsSeparator: ",", defaultValue: '0'}
        },
        cellEdit: true,
        cellsubmit: 'clientArray',
        cellurl : '',
        afterEditCell:function(rowid, cellname, value, iRow, iCol){
            /* //input HTML 태그가 입력되어버리는 문제 해결
            //jqGrid에서 CellEdit 모드 일 때 마우스가 Input에서 focus를 벗어 났을 때 Cell Save
            $("#"+rowid+"_"+cellname).blur(function(){
                $("#grid").jqGrid("saveCell",iRow,iCol);
            });	 
            */	
        },
        loadtext : '로딩중..',
        autowidth: true,
        loadonce : true,
        viewrecords: true,
        height : 'auto',
        rowNum: 20,
        rowList:[10,30,50,80,100],
        pager: '#pager',
        pgtext : "Page {0} of {1}",
        jsonReader: {cell:""},
        multiselect:true,
        ondblClickRow: function(id,irow,icol,e){
 
        },        
        onSelectRow  : function(rowid){
            var idArry = $("#grid").jqGrid('getDataIDs'); //grid의 id 값을 배열로 가져옴
 
            for(var i=0 ; i < idArry.length; i++){
                var ret =  $("#grid").getRowData(idArry[i]); // 해당 id의 row 데이터를 가져옴
                if("N" != ret.finish_yn){ //해당 row의 COMPLETED_YN 컬럼 값이 N이 아니면 checkbox disabled 처리
                    //해당 row의 checkbox disabled 처리 "jqg_list_" 이 부분은 grid에서 자동 생성
                    $("#jqg_grid_"+idArry[i]).removeAttr("checked");
                    $("#"+idArry[i]).removeClass('ui-state-highlight');
                }
            }  
        },
        onSelectAll: function(aRowids,status) { //disabled 처리된 checkbox 선택 안되도록 해주는 부분
            if (status) {
                var cbs = $("tr.jqgrow > td > input.cbox:disabled", $("#grid")[0]);
                cbs.removeAttr("checked");
 
                $("#grid")[0].p.selarrrow = $("#grid").find("tr.jqgrow:has(td > input.cbox:checked)").map(function() { return this.id; }).get();
 
                var idArry = $("#grid").jqGrid('getDataIDs'); 
 
                for(var i=0 ; i < idArry.length; i++){
                    var ret =  $("#grid").getRowData(idArry[i]);
                    //if("N" != ret.COMPLETED_YN){ 
                    if("N" != ret.finish_yn){ //해당 row의 COMPLETED_YN 컬럼 값이 N이 아니면 checkbox disabled 처리 
                        $("#"+idArry[i]).removeClass('ui-state-highlight');
                    }
                }  
            }
        },
        loadComplete: function (data) {
            var allRow = jQuery("#grid").jqGrid('getGridParam', 'records');
            if(allRow == 0 ){
                $("#grid >tbody").append("<tr><td align='center' colspan='10' style=''>조회된 데이터가 없습니다.</td></tr>");
            }
 
            var idArry = $("#grid").jqGrid('getDataIDs'); 
 
            for(var i=0 ; i < idArry.length; i++){
                var ret =  $("#grid").getRowData(idArry[i]); 
                //if("N" != ret.COMPLETED_YN){ 
                if("N" != ret.finish_yn){ //해당 row의 COMPLETED_YN 컬럼 값이 N이 아니면 checkbox disabled 처리 
                   $("#jqg_grid_"+idArry[i]).attr("disabled", true); 
                }
             }
        },
})
<!-- jqGrid 페이징 처리 예시 -->
<div class="grid full-height full-height-strict">
    <table id="grid" class="full-size-jq-grid"></table>
</div>
	<div id="pager" style="height: 35px; "></div>
</div>