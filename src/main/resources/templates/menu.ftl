<html>
<head>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet' href='css/style.css'>
<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<style>
.active{
    background-color: aliceblue;
}

</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper"
		role="navigation">
		  <ul class="nav sidebar-nav">
		    <li class="sidebar-brand"> <a href="#"> Bootstrap 3 </a> </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-home"> </i> Home </a> </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-folder"> </i> Page one </a> </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-file-o"> </i> Second page </a> </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-cog"> </i> Third page </a> </li>
		    <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-fw fa-plus"> </i> Dropdown <span class="caret"> </span> </a>
		      <ul class="dropdown-menu" role="menu">
		        <li class="dropdown-header"> Dropdown heading </li>
		        <li> <a href="#"> Action </a> </li>
		        <li> <a href="#"> Another action </a> </li>
		        <li> <a href="#"> Something else here </a> </li>
		        <li> <a href="#"> Separated link </a> </li>
		        <li> <a href="#"> One more separated link </a> </li>
		      </ul>
		    </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-bank"> </i> Page four </a> </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-dropbox"> </i> Page 5 </a> </li>
		    <li> <a href="#"> <i class="fa fa-fw fa-twitter"> </i> Last page </a> </li>
		  </ul>
		</nav>
	

	<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="js/jsonDecode.js" type="text/javascript"></script>
    <script src="js/vkbeautify.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    var trigger = $('.hamburger'),
		        overlay = $('.overlay'),
		        isClosed = false;
		    trigger.click(function() {
		        hamburger_cross();
		    });
		    function hamburger_cross() {
		        if (isClosed == true) {
		            overlay.hide();
		            trigger.removeClass('is-open');
		            trigger.addClass('is-closed');
		            isClosed = false;
		        } else {
		            overlay.show();
		            trigger.removeClass('is-closed');
		            trigger.addClass('is-open');
		            isClosed = true;
		        }
		    }
		    $('[data-toggle="offcanvas"]').click(function() {
		        $('#wrapper').toggleClass('toggled');
		    });
		});
	</script>
	
	
</body>
</html>