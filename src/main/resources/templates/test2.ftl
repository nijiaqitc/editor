<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="js/index.css">
    </head>
    <body>
<div class="mainDiv1">
<ul id="accordion" class="accordion">
		<li><div class="link"><i class="fa fa-globe"></i>用户管理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">用户维护</a></li>
				<li><a href="javascript:void(0);">用户定位</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>宏观异常管理<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">异常日报</a></li>
				<li><a href="javascript:void(0);">异常管理</a></li>
				<li><a href="javascript:void(0);">异常云图</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>统计报表<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">统计日报</a></li>
				<li><a href="javascript:void(0);">统计个人日报</a></li>
				<li><a href="javascript:void(0);">按时间段统计</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>宏观烈度图<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">烈度图</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>留言板<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">留言板</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>个人设置<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">主题定制</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>物联网<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="javascript:void(0);">设备监控</a></li>
				<li><a href="javascript:void(0);">GIS</a></li>
				<li><a href="javascript:void(0);">统计图</a></li>
			</ul>
		</li>
	</ul>
</div>
<div class="mainDiv2">
	
</div>
<script type="text/javascript">
$(function () {
    var Accordion = function (el, multiple) {
        this.el = el || {};
        this.multiple = multiple || false;
        var links = this.el.find('.link');
        links.on('click', {
            el: this.el,
            multiple: this.multiple
        }, this.dropdown);
    };
    Accordion.prototype.dropdown = function (e) {
        var $el = e.data.el;
        $this = $(this), $next = $this.next();
        $next.slideToggle();
        $this.parent().toggleClass('open');
        if (!e.data.multiple) {
            $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
        }
        ;
    };
    var accordion = new Accordion($('#accordion'), false);
});
</script>
    </body>
</html>