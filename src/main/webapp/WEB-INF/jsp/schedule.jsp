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

    <title>SFU</title>

    <!-- jQuery Resources -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://momentjs.com/downloads/moment.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.1.0/fullcalendar.js'></script>
    <link rel='stylesheet' href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.1.0/fullcalendar.min.css" />

    <!-- FullCalendar Resources -->
    <link rel='stylesheet' href='/resources/fullcalendar/fullcalendar.css' />
    <script src='/resources/lib/jquery.min.js'></script>
    <script src='/resources/lib/moment.min.js'></script>
    <script src='/resources/fullcalendar/fullcalendar.js'></script>

    <script src= '/resources/js/schedule.js'></script>

    <!-- <script>
        $(document).ready(function() {

            var date = new Date();
            var day = date.getDate();
            var month = date.getMonth();
            var year = date.getFullYear();

            var events_array = [
            {
                id: 1,
                title: 'New event',
                start: new Date(2017, 5, 25)
            }

        ];

        // page is now ready, initialize the calendar...

        $('#external-events .fc-event').each(function() {

            // store data so the calendar knows to render an event upon drop
            $(this).data('event', {
                title: $.trim($(this).text()), // use the element's text as the event title
                stick: true // maintain when user navigates (see docs on the renderEvent method)
            });

            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });

        });

        $('#calendar').fullCalendar({
            // put your options and callbacks here

            viewRender: function (view) {
                var h;
                if (view.name == "month") {
                    h = 725;
                } else {
                    h = 725;
                }
                $('#calendar').fullCalendar('option', 'contentHeight', h);
            },

            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay,listWeek'
            },

            selectable: true,
            events: events_array,

            eventRender: function(event, element) {
                element.attr('title', event.tip);
            },
            select: function (start, end, jsEvent, view) {
                var abc = prompt('Enter Title');
                var allDay = !start.hasTime && !end.hasTime;
                var newEvent = new Object();
                newEvent.title = abc;
                newEvent.start = moment(start).format();
                newEvent.allDay = false;

                if (abc) { // if empty schedule, don't add
                    $('#calendar').fullCalendar('renderEvent', newEvent);
                }

            },

            navLinks: true, // can click day/week names to navigate views

            weekNumbers: true,
            weekNumbersWithinDays: true,
            weekNumberCalculation: 'ISO',

            editable: true
        })

    });
    </script> -->


    <!-- Bootstrap core CSS -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/simple-sidebar.css" rel="stylesheet">

    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/form-elements.css">
    <link rel="stylesheet" href="/resources/css/style.css">



</head>

<style>
    #side-container{
    }

    #side-contact{
        position: absolute;
        bottom: 0;
    }

</style>



<body>

<div id="wrapper" class="toggled">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <p>SFU SFEP</p>
            </li>
            <li >
                <a href="${pageContext.request.contextPath}/dashboard">Home</a>
            </li>
            <li class="active">
                <a href="${pageContext.request.contextPath}/schedule">Schedule</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/profile">Profile</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/statistics">Statistics</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/payroll">Payroll</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/log">Log</a>
            </li>
            <li>
                <a type="button" data-toggle="modal" data-target="#myModal">IF NO AUTH</a>
            </li>
        </ul>
        <div id="side-container">
            <div id="side-contact" style="text-align:center">

                <p style="text-align:center; font-size:20px">
                    <a class="fa fa-sign-out fa-x" href="${pageContext.request.contextPath}/">Sign Out</a>
                </p>
                <br>
                <p style="font-weight: bold; text-decoration: underline;">Contact: </p>
                <p class="fa fa-phone "> (604)-666-6666</p>

                <p class="fa fa-envelope-o"> admin_sfep@sfu.ca</p>
            </div>
        </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:100px">
        <div class="modal-dialog" role="document" style="margin-top:100px">
            <div class="modal-content" style="background-color:red">

                <div class="modal-body" style="color:white">
                    <center>
                        <strong>ACCESS DENIED </strong>
                        <p>No Authorization </p>
                    </center>
                </div>
            </div>
        </div>
    </div>

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <i class="fa fa-bars fa-2x sidebar-brand" id="menu-toggle"></i>
            <div class="col-sm-12 text">
                <div class="description">
                    <center>
                        <img src="/resources/img/logo_made/logo_2.png" class="img-responsive" style="height:100px;width:500px">
                    </center>
                    <!-- <img src="/resources/img/stole_from_sfu/sample_SSEP.png" class="img-responsive col-sm-12"> -->
                    <div id='calendar'></div>
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<!--     <script src="/resources/jquery/jquery.min.js"></script>
    <script src="/resources/popper/popper.min.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
 -->
<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>