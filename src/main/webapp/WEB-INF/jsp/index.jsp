<%--
  Created by IntelliJ IDEA.
  model.User: PrivateAcc
  Date: 2017-09-29
  Time: 5:02 PM
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
    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="resources/css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/form-elements.css">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<style>
    #side-container{
    }
    #side-contact{
        position: absolute;
        bottom: 0;
        color: #ffffff;
    }
</style>
<body>
<div id="wrapper" class="toggled">
    <jsp:include page="partfiles/sidebar.jsp"/>
    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <i class="fa fa-bars fa-2x sidebar-brand" id="menu-toggle"></i>
            <div class="col-sm-12 text">
                <div class="description">
                    <%--This contains all of the relevant info about announcement--%>
                    <center>
                        <%--<h4>Announcement</h4><br>--%>
                            <img src="resources/img/logo_made/logo_2.png" class="img-responsive" style="height:100px;width:500px">
                        <div id="nav">
                            <ul>
                                <li><button type="button" id = "createAnnouncement" style = "background:#901d33">Add an Announcement</button></li>
                            </ul>
                        </div>
                        <hr>
                            <div id = "createAnnouncementModal" class = "modal fade">
                                <div class = "modal-dialog">
                                    <div class = "modal-content">
                                        <div class = "modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X
                                            </button>
                                            <h4 id="myModalLabel1" style="text-align:left"><b>Create an Announcement</b></h4>
                                        </div>
                                        <div class = "modal-body">
                                            <label class="control-label" style="float:left;"><u>Title: </u> </label><br>
                                            <div class="controls">
                                                <input class="form-control" name="announceTitleModal" id="announceTitleModal" style="width:100%;float:left;" placeholder="Enter a title.">
                                                </input>
                                            </div>

                                            <br><br>

                                            <label class="control-label" style="float:left;"><u>Date:</u>&nbsp;&nbsp;</label>
                                                <input type="datetime-local" id="announceStartTime" name = "annStart" style="float:left;"/>

                                            <br><br>

                                            <label class="control-label" style="float:left;"><u>Specific Team:</u></label>
                                            <select class="form-control" name="eventCampus" id="eventCampus">
                                                <option value='all' id='allCampuses' disabled="true" selected>Select Teams
                                                </option>
                                            </select>

                                            <label class="control-label" style="float:left;"><u>Message: </u> </label><br>
                                            <div class="controls">
                                            <textarea style="border-width:1px;border-color: #a9b7d1;height: 100px" class="form-control" rows="8" id="eventNotes" placeholder="Enter a message."></textarea>
                                            </div>
                                        </div>

                                        <div class = "modal-footer">
                                            <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>

                                            <button type="submit" class="btn btn-primary" id="submitAnnouncement">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </center>
                        <div class="panel panel-primary" id = "fixed" data-spy="affix" style ="width:25%;text-align:left;float:right">
                            <div class="panel-heading" id = "announceFilter">Filter</div>
                            <div class="panel-body" id = campusLead>
                                <div class="col-sm-12 row">
                                    <div class="radio">
                                        <label>
                                            <input class='allOrNone' type="checkbox" value="ALLCAMPUSES" id="ALLCAMPUSES" checked>ALL CAMPUSES
                                        </label>
                                        <br>
                                        <label>
                                            <input class='campusFilter' type="checkbox" value="BURNABY" id="BURNABY" class = "others">BURNABY
                                        </label>
                                        <br>
                                        <label>
                                            <input class='campusFilter' type="checkbox" value="SURREY" id="SURREY" class = "others">SURREY
                                        </label>
                                        <br>
                                        <label>
                                            <input class='campusFilter' type="checkbox" value="VANCOUVER" id="VANCOUVER" class = "others">VANCOUVER
                                        </label>
                                        <br>
                                    </div>
                                    <select class="form-control" id="shiftSelect"></select>
                                    <br>
                                </div>
                            </div>
                        </div>
                    <div class="panel panel-primary" style ="width:65%;text-align:left">
                        <div class="panel-heading" id = "announceTitle">Title</div>
                        <hr>
                        <div class="panel-body" id = announceBody>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </div><hr>
                        <div class = "panel-body" id = "announceDate">Date: </div>
                        <div class = "panel-body" id = "announceAuthor">Author: </div>
                    </div>
                        <div class="panel panel-primary" style ="width:65%;text-align:left"> <%--for demonstration purposes, should be deleted later--%>
                            <div class="panel-heading" id = "announceTitle">Title</div>
                            <hr>
                            <div class="panel-body" id = announceBody>
                                Message
                            </div><hr>
                            <div class = "panel-body" id = "announceDate">Date: </div>
                            <div class = "panel-body" id = "announceAuthor">Author: </div>
                        </div>
                        <div class="panel panel-primary" style ="width:65%;text-align:left">
                            <div class="panel-heading" id = "announceTitle">Title</div>
                            <hr>
                            <div class="panel-body" id = announceBody>
                                Message
                            </div><hr>
                            <div class = "panel-body" id = "announceDate">Date: </div>
                            <div class = "panel-body" id = "announceAuthor">Author: </div>
                        </div> <%--for demonstration purposes, should be deleted later--%>

                </div>



                <hr><br>
                <div class="col-sm-3">
                    <center>
                        <img src="resources/img/stole_from_sfu/cidric.png" alt="" class="img-circle" height="200px" width="200px">
                        <h3><b>Cidric Butac</b></h3>
                        <h4>Supervisor</h4>
                        <p>sfucsp@sfu.ca</p>
                        <p>778-782-5425</p>
                    </center>
                </div>
                <div class="col-sm-3">
                    <center>
                        <img src="resources/img/stole_from_sfu/miriam.png" class="img-circle" height="200px" width="200px">
                        <h3><b>Miriam Sise Odaa</b></h3>
                        <h4>Burnaby Team Lead</h4>
                        <p>ssepbur@sfu.ca</p>
                    </center>
                </div>
                <div class="col-sm-3">
                    <center>
                        <img src="resources/img/stole_from_sfu/kitty.png" class="img-circle" height="200px" width="200px">
                        <h3><b>Kitty Lo</b></h3>
                        <h4>Surrey Team Lead</h4>
                        <p>ssepsur@sfu.ca</p>
                    </center>
                </div>
                <div class="col-sm-3">
                    <center>
                        <img src="resources/img/stole_from_sfu/satpal.png" class="img-circle" height="200px" width="200px">
                        <h3><b>Satpal Samra</b></h3>
                        <h4>Vancouver Team Lead</h4>
                        <p>ssepvan@sfu.ca</p>
                    </center>
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Bootstrap core JavaScript -->
<script src="resources/jquery/jquery.min.js"></script>
<script src="resources/popper/popper.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src='resources/js/announcement.js'></script>

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    var top = $('.thisone').offset().top;
    $('.trigger').click(function () {
        $('.thisone').css('position','');
        $('.left2').toggle('slow',function(){
            top = $('.thisone').offset().top;
        });


    });

    $(document).scroll(function(){
        $('.thisone').css('position','');
        top = $('.thisone').offset().top;
        $('.thisone').css('position','absolute');
        $('.thisone').css('top',Math.max(top,$(document).scrollTop()));
    });

</script>
</body>
</html>