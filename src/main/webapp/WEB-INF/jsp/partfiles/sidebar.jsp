<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- jQuery Resources -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>


    <!-- Sidebar -->
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
            <li class="sidebar-item">
                <a href="#"> <span class="fa-stack fa-lg pull-left"><i class="fa fa-area-chart fa-stack-1x "></i></span> Statistics</a>
                <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                    <li><a href="${pageContext.request.contextPath}/statistics/info_lf"><span class="fa-stack fa-lg pull-left"><i class="fa fa-bar-chart fa-stack-1x "></i></span>Lost & Found</a></li>
                    <li><a href="${pageContext.request.contextPath}/statistics/public_contact"><span class="fa-stack fa-lg pull-left"><i class="fa fa-bar-chart fa-stack-1x "></i></span>Public Contact</a></li>

                </ul>
            </li>
            <li class="sidebar-item">
                <a href="${pageContext.request.contextPath}/timecard_list"><span class="fa-stack fa-lg pull-left"><i class="fa fa-clock-o fa-stack-1x "></i></span>Time Cards</a>
            </li>
            <c:if test="${sessionScope.user.role == 'ADMIN' || sessionScope.user.role == 'SUPERVISOR'}">
                <li class="sidebar-item">
                    <a href="${pageContext.request.contextPath}/users"><span class="fa-stack fa-lg pull-left"><i class="fa fa-users fa-stack-1x "></i></span>Users</a>
                </li>
            </c:if>
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

<!-- /#sidebar-wrapper -->

<script type="text/javascript">
    $sbJQ = jQuery.noConflict(false);
    $sbJQ(document).ready(function() {
        var links = $sbJQ('li.sidebar-item').children();
        $sbJQ.each(links, function(key, value) {
            if (value.href === document.URL) {
                $sbJQ(this).parent().addClass('active');
                if ($sbJQ(this).parent().hasClass('stats')) {
                    $('#stats').addClass('active');
                }
            }
        })
    });
</script>
<script src="resources/js/sidebar_menu.js"></script>
