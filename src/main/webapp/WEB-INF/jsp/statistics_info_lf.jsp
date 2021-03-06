<%--
  Created by IntelliJ IDEA.
  User: PrivateAcc
  Date: 2017-09-29
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>


    <title>SFU</title>

    <!-- Custom styles for this template -->

    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <link href="/resources/css/simple-sidebar.css" rel="stylesheet">

    <link rel="stylesheet" href="/resources/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/form-elements.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/datatables/css/datatables.min.css">
</head>

<body>
<nav class="navbar navbar-default no-margin navbar-fixed-top">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header fixed-brand">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"  id="menu-toggle">
            <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
        </button>
        <a class="navbar-brand" href="#"><img src="resources/img/stole_from_sfu/sfu_official_logo.png" width="220px"></a>
    </div><!-- navbar-header-->

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active" ><button class="navbar-toggle collapse in" data-toggle="collapse" id="menu-toggle-2"> <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span></button></li>
        </ul>
    </div>
</nav>

<div id="wrapper" style="padding-top: 56px">

    <%--<jsp:include page="partfiles/sidebar.jsp"/>--%>
        <div id="sidebar-wrapper" style="padding-top: 0px">
            <ul class="sidebar-nav nav-pills nav-stacked" id="menu">

                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/"><span class="fa-stack fa-lg pull-left"><i class="fa fa-home fa-stack-1x "></i></span> Home</a>
                </li>
                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/schedule"><span class="fa-stack fa-lg pull-left"><i class="fa fa-calendar fa-stack-1x "></i></span> Schedule</a>
                </li>
                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/profile"><span class="fa-stack fa-lg pull-left"><i class="fa fa-user fa-stack-1x "></i></span> Profile</a>
                </li>
                <li class="sidebar-item active">
                    <a href="#"> <span class="fa-stack fa-lg pull-left"><i class="fa fa-area-chart fa-stack-1x "></i></span> Statistics</a>
                    <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                        <li class="active"><a href="${pageContext.request.contextPath}/statistics/info_lf"><span class="fa-stack fa-lg pull-left"><i class="fa fa-bar-chart fa-stack-1x "></i></span>Lost & Found</a></li>
                        <li><a href="${pageContext.request.contextPath}/statistics/public_contact"><span class="fa-stack fa-lg pull-left"><i class="fa fa-bar-chart fa-stack-1x "></i></span>Public Contact</a></li>

                    </ul>
                </li>
                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/timecard_list"><span class="fa-stack fa-lg pull-left"><i class="fa fa-clock-o fa-stack-1x "></i></span>Time Cards</a>
                </li>
                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/users"><span class="fa-stack fa-lg pull-left"><i class="fa fa-users fa-stack-1x "></i></span>Users</a>
                </li>
                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/logout"><span class="fa-stack fa-lg pull-left"><i class="fa fa-sign-out fa-stack-1x "></i></span><b style="color: yellow">Sign Out</b></a>
                </li>


                <li class="sidebar-item" style="padding-left: 40px;padding-top: 350px">
                    <span class="fa-stack fa-lg pull-left" style="color: white"></span><b style="font-size: 15px;color: white"><u>Contact</u></b>
                </li>
                <li class="sidebar-item">
                    <span class="fa-stack fa-lg pull-left" style="color: white"><i class="fa fa-phone fa-stack-1x "></i></span><b style="font-size: 15px;color: white;padding-left: 15px"> (778)-782-5425</b></a>
                </li>
                <li class="sidebar-item">
                    <span class="fa-stack fa-lg pull-left" style="color: white"><i class="fa fa-envelope-o fa-stack-1x "></i></span><b style="font-size: 15px;color: white;padding-left: 15px"> sfucsp@sfu.ca</b></a>
                </li>
            </ul>
        </div><!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="col-sm-12 text">
                <div class="description">

                    <div class="row">
                        <div class="col-md-8">
                            <ul class="pagination">
                                <li class="active">
                                    <a href="#">Lost & Found</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/statistics/public_contact">Public Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4" style="padding-top: 15px;padding-left: 50px">
                            <%--<button type="button" class="btn" id="button_export"><i class="fa fa-file-excel-o"></i></button>--%>
                            <button type="button" class="btn-primary" id="button_save" style="height: 40px;width: 40px; border-color: white; border-width: 5px"><i class="fa fa-floppy-o"></i></button>
                            <button type="button" class="btn-primary" id="button_edit" style="height: 40px;width: 40px; border-color: white; border-width: 5px"><i class="fa fa-pencil-square-o"></i></button>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>

            <center>
                <div class="btn-group" data-toggle="buttons">
                    <label class="btn btn-success">
                        <input type="radio" name="options" id="option1" autocomplete="off" value="Burnaby"> Burnaby
                    </label>
                    <label class="btn btn-success">
                        <input type="radio" name="options" id="option2" autocomplete="off" value="Surrey"> Surrey
                    </label>
                    <label class="btn btn-success">
                        <input type="radio" name="options" id="option3" autocomplete="off" value="Vancouver"> Vancouver
                    </label>
                </div>
            </center>
            <br><br>
            <div class="col-sm-8" style="border-width: 1px;border-color: #0c0c0c; border-style:solid;height: 443px">
                <center><a title="Export" href="#" id="export">Export Table to CSV</a></center>

                <table id="table1" class="display" width="100%"></table>
            </div>
            <div class="col-sm-4" style="border-width: 1px;border-color: #0c0c0c; border-style:solid;height: 443px">
                <center><a title="Export" href="#" id="export2">Export Table to CSV</a></center>

                <table id="table2" class="display" width="100%"></table>
            </div>


            <div class="col-sm-12" style="border-width: 1px;border-color: #0c0c0c; border-style:solid">
                <div id="chart1" style="width:100%;height:400px;"></div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="/resources/datatables/js/jquery-1.12.4.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/datatables/js/datatables.min.js"></script>
<script src="/resources/js/echarts.common.min.js"></script>
<script src="resources/js/sidebar_menu.js"></script>


<script type="text/javascript">
    var CAMPUS = "Burnaby";
	//get chart element
    var myChart = echarts.init(document.getElementById('chart1'));

	var table_title = [
		"2017", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"
	];
	
	var table1_data =  [
		["Directions", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
		["Lost&Found", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
		["Payments", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
		["PhoneService", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
		["KeyService", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
		["Others", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
	];
	
	var table2_data = [
		["0", "0%", "0"],
		["0", "0%", "0"],
		["0", "0%", "0"],
		["0", "0%", "0"],
		["0", "0%", "0"],
		["0", "0%", "0"],
		["0", "", "0"],
	];
	
	var table1;
	var table2;

	$(document).ready(function() {
		
		table1 = $('#table1').DataTable({
			data: table1_data,
			columns: [
				{title: table_title[0], width: "20px"}, 
				{title: table_title[1], width: "20px"},
				{title: table_title[2], width: "20px"},
				{title: table_title[3], width: "20px"}, 
				{title: table_title[4], width: "20px"},
				{title: table_title[5], width: "20px"},
				{title: table_title[6], width: "20px"},
				{title: table_title[7], width: "20px"},
				{title: table_title[8], width: "20px"},
				{title: table_title[9], width: "20px"},
				{title: table_title[10], width: "20px"},
				{title: table_title[11], width: "20px"},
				{title: table_title[12], width: "20px"},
				{defaultContent: "<button class='edit-btn'  type='button' hidden='true'>edit</button>"}
			],
			autoWidth: false,
			ordering: false,
			bPaginate: false,
			bFilter: false,
			scrollX: true
		});
		
		table2 = $('#table2').DataTable({
			data: table2_data,
			columns: [
				{title: "Total", width: "15px"}, 
				{title: "%", width: "15px"},
				{title: "Average", width: "15px"}
			],
			autoWidth: false,
			ordering: false,
			bPaginate: false,
			bFilter: false,
			scrollX: true
		});
		
		$("#table1 tbody").on("click",".edit-btn",function(){
           var tds=$(this).parents("tr").children();
           $.each(tds, function(i,td){
               var tmp=$(td);
               if(i < 1 || tmp.has('button').length ){return true;}//skip first column and the invisible btn
               var text=tmp.text();
               var input=$("<input type='number' style='padding:1px 1px 1px 1px;width:100%;height:100%;'></input>");
               input.val(text);
               tmp.html(input);
           });
           $(this).toggleClass("edit-btn");
           $(this).toggleClass("save-btn");
       });
 
       $("#table1 tbody").on("click",".save-btn",function(){
           var tds=$(this).parents("tr").children();
           $.each(tds, function(i,td){
               var tmp=$(td);
               //get input to text
               if(i >= 1 || !tmp.has('button').length){
                   var text=tmp.children("input").val();
                   tmp.html(text);
                   table1.cell(tmp).data(text);//modify the data of DataTables
               }
           });
           $(this).toggleClass("edit-btn");
           $(this).toggleClass("save-btn");
       });
		
		$('#button_edit').click( function(){
			$(".edit-btn").click();
		});
		$('#button_save').click( function(){
			$(".save-btn").click();
			setTimeout(300);
			tmp_data = table1.rows().data();
            var post_data = "[";
            for (var i = 0; i < 6; i++) {
                for (var j = 0; j < 12; j++) {
                    post_data += tmp_data[i][j+1];
                    if (i != 5 || j != 11) {
                        post_data += ",";
                    }
                }
            }
            post_data += "]";

            var token = $("meta[name='_csrf']").attr("content");
            var header = $("meta[name='_csrf_header']").attr("content");

            $.ajaxSetup({
                beforeSend: function(xhr) {
                xhr.setRequestHeader(header, token);
                }
            });
            $.post("/statistics/info_lf/data/post",
                {
                    campus: CAMPUS,
                    data: post_data
                },
                function(data,status){
                    if (data.result == "success") {
                        alert("update success");
                    } else {
                        alert("update failed");
                    }
                }
            );
			showChart(tmp_data);
		});

        $("input:radio").change(function(){
            $(".save-btn").click();
            if ($(this).is(":checked")) {
                CAMPUS = $(this).val();
                getData();
            }
        });

		showChart(table1_data);
        getData();
        $("#option1").click();
	});

    function getData() {
        $.get("/statistics/info_lf/data/get?campus=" + CAMPUS,
            function(data,status){
                table_title = data.title;
                strs = ["directions", "lost & found", "payments", "phone services", "key services", "other inquiries"];
                for(var i = 0; i < 12; i++) {
                    table1_data[0][i+1] = "" + data[strs[0]][i];
                    table1_data[1][i+1] = "" + data[strs[1]][i];
                    table1_data[2][i+1] = "" + data[strs[2]][i];
                    table1_data[3][i+1] = "" + data[strs[3]][i];
                    table1_data[4][i+1] = "" + data[strs[4]][i];
                    table1_data[5][i+1] = "" + data[strs[5]][i];
                }
                table1.destroy();
                table1 = $('#table1').DataTable({
                    data: table1_data,
                    columns: [
                        {title: table_title[0], width: "20px"},
                        {title: table_title[1], width: "20px"},
                        {title: table_title[2], width: "20px"},
                        {title: table_title[3], width: "20px"},
                        {title: table_title[4], width: "20px"},
                        {title: table_title[5], width: "20px"},
                        {title: table_title[6], width: "20px"},
                        {title: table_title[7], width: "20px"},
                        {title: table_title[8], width: "20px"},
                        {title: table_title[9], width: "20px"},
                        {title: table_title[10], width: "20px"},
                        {title: table_title[11], width: "20px"},
                        {title: table_title[12], width: "20px"},
                        {defaultContent: "<button class='edit-btn'  type='button' hidden='true'>edit</button>"}
                    ],
                    autoWidth: false,
                    ordering: false,
                    bPaginate: false,
                    bFilter: false,
                    scrollX: true
                });
                showChart(table1_data);
            }
        );
    }

	function showChart(tmp_data){
		data_to_show = [];
		total_sum = 0;
		total_counter = 0;
		for (var i = 0; i < tmp_data.length; i++) {
			arr = [];
			sum = 0;
			counter = 0;
			for (var j = 1; j < tmp_data[i].length; j++) {
				num = 0;
				if (tmp_data[i][j] == "") {
					num = null;
				} else {
					num = parseInt(tmp_data[i][j]);
					sum+= num;
					counter++;
				}
				arr.push(num);
			}
			if (counter!=0) {
				table2_data[i][0] = sum + "";
				average = sum/counter
				average = average.toFixed(2);
				table2_data[i][2] = average + "";
			}
			total_sum += sum;
			total_counter += counter;
			data_to_show.push(arr);
		}
		for (var i = 0; i < tmp_data.length; i++) {
			if (total_sum != 0) {
				percent = table2_data[i][0]/total_sum*100;
				percent = percent.toFixed(2);
				table2_data[i][1] = percent + "%";
			}
			
		}
		table2_data[tmp_data.length][0] = total_sum + "";
		table2_data[tmp_data.length][2] = (total_sum/total_counter).toFixed(2) + "";
		table2.destroy();
		table2 = $('#table2').DataTable({
			data: table2_data,
			columns: [
				{title: "Total", width: "15px"}, 
				{title: "%", width: "15px"},
				{title: "Average", width: "15px"}
			],
			autoWidth: false,
			ordering: false,
			bPaginate: false,
			bFilter: false,
			scrollX: true
		});
		refreshChart(table_title, data_to_show);
	}
	
	function refreshChart(ctitle, cdata) {
		myChart.title = "Number of Infomation Activities in 2017 by month";
		var colors = ['#5793f3', '#d14a61', '#675bba', '#775bba', '#995bba'];
		// chart config and data
		var option = {
			color: colors,
			tooltip: {
				trigger: 'none',
				axisPointer: {
					type: 'cross'
				}
			},
			legend: {
				data:['direction', 'lost&found','payment', 'phone', 'key', 'others']
			},
			grid: {
				top: 70,
				bottom: 50
			},
			xAxis: [
				{
					type: 'category',
					axisTick: {
						alignWithLabel: true
					},
					axisLine: {
						onZero: false,
						lineStyle: {
							color: colors[1]
						}
					},
					axisPointer: {
						label: {
							formatter: function (params) {
								return 'number  ' + params.value
									+ (params.seriesData.length ? '：' + params.seriesData[0].data : '');
							}
						}
					},
					data: ctitle.slice(1)
				}
			],
			yAxis: [
				{
					type: 'value'
				}
			],
			series: [
				{
					name:'direction',
					type:'line',
					smooth: true,
					data: cdata[0]
				},
				{
					name:'lost&found',
					type:'line',
					smooth: true,
					data: cdata[1]
				},
				{
					name:'payment',
					type:'line',
					smooth: true,
					data: cdata[2]
				},
				{
					name:'phone',
					type:'line',
					smooth: true,
					data: cdata[3]
				},
				{
					name:'key',
					type:'line',
					smooth: true,
					data: cdata[4]
				},
				{
					name:'others',
					type:'line',
					smooth: true,
					data: cdata[5]
				}
			]
		};
		// show chart
		myChart.setOption(option);
	}
	
    
    
</script>

<!-- Menu Toggle Script -->

<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    $(document).ready(function () {
        function exportTableToCSV($table1, filename) {
            var $headers = $table1.find('tr:has(th)')
                ,$rows = $table1.find('tr:has(td)')

                // Temporary delimiter characters unlikely to be typed by keyboard
                // This is to avoid accidentally splitting the actual contents
                ,tmpColDelim = String.fromCharCode(11) // vertical tab character
                ,tmpRowDelim = String.fromCharCode(0) // null character

                // actual delimiter characters for CSV format
                ,colDelim = '","'
                ,rowDelim = '"\r\n"';

            // Grab text from table into CSV formatted string
            var csv = '"';
            csv += formatRows($headers.map(grabRow));
            csv += rowDelim;
            csv += formatRows($rows.map(grabRow)) + '"';

            // Data URI
            var csvData = 'data:application/csv;charset=utf-8,' + encodeURIComponent(csv);

            // For IE (tested 10+)
            if (window.navigator.msSaveOrOpenBlob) {
                var blob = new Blob([decodeURIComponent(encodeURI(csv))], {
                    type: "text/csv;charset=utf-8;"
                });
                navigator.msSaveBlob(blob, filename);
            } else {
                $(this)
                    .attr({
                        'download': filename
                        ,'href': csvData
                        //,'target' : '_blank' //if you want it to open in a new window
                    });
            }

            //------------------------------------------------------------
            // Helper Functions
            //------------------------------------------------------------
            // Format the output so it has the appropriate delimiters
            function formatRows(rows){
                return rows.get().join(tmpRowDelim)
                    .split(tmpRowDelim).join(rowDelim)
                    .split(tmpColDelim).join(colDelim);
            }
            // Grab and format a row from the table
            function grabRow(i,row){

                var $row = $(row);
                //for some reason $cols = $row.find('td') || $row.find('th') won't work...
                var $cols = $row.find('td');
                if(!$cols.length) $cols = $row.find('th');

                return $cols.map(grabCol)
                    .get().join(tmpColDelim);
            }
            // Grab and format a column from the table
            function grabCol(j,col){
                var $col = $(col),
                    $text = $col.text();

                return $text.replace('"', '""'); // escape double quotes

            }
        }


        // This must be a hyperlink
        $("#export").click(function (event) {
            var outputFile = 'TableA'
            outputFile = outputFile.replace('.csv','') + '.csv'

            // CSV
            exportTableToCSV.apply(this, [$('#table1'), outputFile]);

            // IF CSV, don't do event.preventDefault() or return false
            // We actually need this to be a typical hyperlink
        });

        $("#export2").click(function (event) {
            var outputFile = 'TableB'
            outputFile = outputFile.replace('.csv','') + '.csv'

            // CSV
            exportTableToCSV.apply(this, [$('#table2'), outputFile]);

        });
    });
</script>
</body>
</html>
