<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Dashboard - HealthCare</title>
        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css ' />" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/font-awesome/4.2.0/css/font-awesome.min.css '/>" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/fonts/fonts.googleapis.com.css '/>" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
        <script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

    <body class="no-skin">
        <!-- header -->
        <%@ include file="/common/header.jsp" %>
        <!-- header -->

        <div class="main-container" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.check('main-container', 'fixed')
                } catch (e) {
                }
            </script>
            <!-- header -->
            <%@ include file="/Admin/menu.jsp" %>
            <!-- header -->

            <div class="main-content">
                <div class="page-content">
                    <div class="ace-settings-container" id="ace-settings-container">
                        <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                            <i class="ace-icon fa fa-cog bigger-130"></i>
                        </div>

                        <div class="ace-settings-box clearfix" id="ace-settings-box">
                            <div class="pull-left width-50">
                                <div class="ace-settings-item">
                                    <div class="pull-left">
                                        <select id="skin-colorpicker" class="hide">
                                            <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                        </select>
                                    </div>
                                    <span>&nbsp; Choose Skin</span>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                                    <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                                    <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                                    <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                                    <label class="lbl" for="ace-settings-add-container">
                                        Inside
                                        <b>.container</b>
                                    </label>
                                </div>
                            </div><!-- /.pull-left -->

                            <div class="pull-left width-50">
                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                                    <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                                    <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                                    <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                                </div>
                            </div><!-- /.pull-left -->
                        </div><!-- /.ace-settings-box -->
                    </div><!-- /.ace-settings-container -->

                    <div class="page-header">
                        <h1>
                            Dashboard
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                Tổng quát &amp; Thống kê
                            </small>
                        </h1>
                    </div><!-- /.page-header -->

                    <div class="row">
                        <div class="col-xs-12">
                            <!-- PAGE CONTENT BEGINS -->
                            <div class="alert alert-block alert-success">
                                <button type="button" class="close" data-dismiss="alert">
                                    <i class="ace-icon fa fa-times"></i>
                                </button>

                                <i class="ace-icon fa fa-check green"></i>

                                Welcome to
                                <strong class="green">
                                    HealthCare System
                                    <small>(v1.0)</small>
                                </strong>,
                                
                            </div>

                            <div class="row">
                                <div class="space-6"></div>

                                <div class="col-sm-7 infobox-container">
                                    <div class="infobox infobox-green">
                                        <div class="infobox-icon">
                                            <i class="ace-icon fa fa-comments"></i>
                                        </div>

                                        <div class="infobox-data">
                                            <span class="infobox-data-number">32</span>
                                            <div class="infobox-content">BỆNH NHÂN</div>
                                        </div>

                                        <div class="stat stat-success">8%</div>
                                    </div>

                                    <div class="infobox infobox-blue">
                                        <div class="infobox-icon">
                                            <i class="ace-icon fa fa-twitter"></i>
                                        </div>

                                        <div class="infobox-data">
                                            <span class="infobox-data-number">11</span>
                                            <div class="infobox-content">BÁC SĨ</div>
                                        </div>

                                        <div class="badge badge-success">
                                            +32%
                                            <i class="ace-icon fa fa-arrow-up"></i>
                                        </div>
                                    </div>

                                    <div class="infobox infobox-pink">
                                        <div class="infobox-icon">
                                            <i class="ace-icon fa fa-shopping-cart"></i>
                                        </div>

                                        <div class="infobox-data">
                                            <span class="infobox-data-number">8</span>
                                            <div class="infobox-content">CƠ SỞ Y TẾ</div>
                                        </div>
                                        <div class="stat stat-important">4%</div>
                                    </div>

                                    <div class="infobox infobox-red">
                                        <div class="infobox-icon">
                                            <i class="ace-icon fa fa-flask"></i>
                                        </div>

                                        <div class="infobox-data">
                                            <span class="infobox-data-number">7</span>
                                            <div class="infobox-content">LỊCH HẸN</div>
                                        </div>
                                    </div>

                                    <div class="infobox infobox-orange2">
                                        <div class="infobox-chart">
                                            <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
                                        </div>

                                        <div class="infobox-data">
                                            <span class="infobox-data-number">6,251</span>
                                            <div class="infobox-content">LƯỢT TRUY CẬP</div>
                                        </div>

                                        <div class="badge badge-success">
                                            7.2%
                                            <i class="ace-icon fa fa-arrow-up"></i>
                                        </div>
                                    </div>

                                    <div class="infobox infobox-blue2">
                                        <div class="infobox-progress">
                                            <div class="easy-pie-chart percentage" data-percent="42" data-size="46">
                                                <span class="percent">42</span>%
                                            </div>
                                        </div>

                                        <div class="infobox-data">
                                            <span class="infobox-text">traffic used</span>

                                            <div class="infobox-content">
                                                <span class="bigger-110">~</span>
                                                58GB remaining
                                            </div>
                                        </div>
                                    </div>

                                    <div class="space-6"></div>

                                    <div class="infobox infobox-green infobox-small infobox-dark">
                                        <div class="infobox-progress">
                                            <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
                                                <span class="percent">61</span>%
                                            </div>
                                        </div>

                                        <div class="infobox-data">
                                            <div class="infobox-content">Task</div>
                                            <div class="infobox-content">Completion</div>
                                        </div>
                                    </div>

                                    <div class="infobox infobox-blue infobox-small infobox-dark">
                                        <div class="infobox-chart">
                                            <span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
                                        </div>

                                        <div class="infobox-data">
                                            <div class="infobox-content"><span>Earning</span></div>
                                            <div class="infobox-content">$32,000</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="vspace-12-sm"></div>

                                <div class="col-sm-5">
                                    <div class="widget-box">
                                        <div class="widget-header widget-header-flat widget-header-small">
                                            <h5 class="widget-title">
                                                <i class="ace-icon fa fa-signal"></i>
                                                Traffic Sources
                                            </h5>

                                            <div class="widget-toolbar no-border">
                                                <div class="inline dropdown-hover">
                                                    <button class="btn btn-minier btn-primary">
                                                        This Week
                                                        <i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
                                                    </button>

                                                    <ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
                                                        <li class="active">
                                                            <a href="#" class="blue">
                                                                <i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
                                                                This Week
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                                                Last Week
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                                                This Month
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                                                Last Month
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <div id="piechart-placeholder"></div>

                                                <div class="hr hr8 hr-double"></div>

                                                <div class="clearfix">
                                                    <div class="grid3">
                                                        <span class="grey">
                                                            <i class="ace-icon fa fa-facebook-square fa-2x blue"></i>
                                                            &nbsp; likes
                                                        </span>
                                                        <h4 class="bigger pull-right">1,255</h4>
                                                    </div>
                                                </div>
                                            </div><!-- /.widget-main -->
                                        </div><!-- /.widget-body -->
                                    </div><!-- /.widget-box -->
                                </div><!-- /.col -->
                            </div><!-- /.row -->
                            <!-- PAGE CONTENT ENDS -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.page-content -->
            </div>
            <!-- footer -->
            <%@ include file="/common/footer.jsp" %>
            <!-- footer -->

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse display">
                <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
            </a>
        </div>
        <script type="text/javascript">
            jQuery(function ($) {
                $('.easy-pie-chart.percentage').each(function () {
                    var $box = $(this).closest('.infobox');
                    var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
                    var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
                    var size = parseInt($(this).data('size')) || 50;
                    $(this).easyPieChart({
                        barColor: barColor,
                        trackColor: trackColor,
                        scaleColor: false,
                        lineCap: 'butt',
                        lineWidth: parseInt(size / 10),
                        animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
                        size: size
                    });
                })

                $('.sparkline').each(function () {
                    var $box = $(this).closest('.infobox');
                    var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
                    $(this).sparkline('html',
                            {
                                tagValuesAttribute: 'data-values',
                                type: 'bar',
                                barColor: barColor,
                                chartRangeMin: $(this).data('min') || 0
                            });
                });


                //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
                //but sometimes it brings up errors with normal resize event handlers
                $.resize.throttleWindow = false;

                var placeholder = $('#piechart-placeholder').css({'width': '90%', 'min-height': '150px'});
                var data = [
                    {label: "social networks", data: 38.7, color: "#68BC31"},
                    {label: "search engines", data: 24.5, color: "#2091CF"},
                    {label: "ad campaigns", data: 8.2, color: "#AF4E96"},
                    {label: "direct traffic", data: 18.6, color: "#DA5430"},
                    {label: "other", data: 10, color: "#FEE074"}
                ]
                function drawPieChart(placeholder, data, position) {
                    $.plot(placeholder, data, {
                        series: {
                            pie: {
                                show: true,
                                tilt: 0.8,
                                highlight: {
                                    opacity: 0.25
                                },
                                stroke: {
                                    color: '#fff',
                                    width: 2
                                },
                                startAngle: 2
                            }
                        },
                        legend: {
                            show: true,
                            position: position || "ne",
                            labelBoxBorderColor: null,
                            margin: [-30, 15]
                        }
                        ,
                        grid: {
                            hoverable: true,
                            clickable: true
                        }
                    })
                }
                drawPieChart(placeholder, data);

                /**
                 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
                 so that's not needed actually.
                 */
                placeholder.data('chart', data);
                placeholder.data('draw', drawPieChart);


                //pie chart tooltip example
                var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
                var previousPoint = null;

                placeholder.on('plothover', function (event, pos, item) {
                    if (item) {
                        if (previousPoint != item.seriesIndex) {
                            previousPoint = item.seriesIndex;
                            var tip = item.series['label'] + " : " + item.series['percent'] + '%';
                            $tooltip.show().children(0).text(tip);
                        }
                        $tooltip.css({top: pos.pageY + 10, left: pos.pageX + 10});
                    } else {
                        $tooltip.hide();
                        previousPoint = null;
                    }

                });

                /////////////////////////////////////
                $(document).one('ajaxloadstart.page', function (e) {
                    $tooltip.remove();
                });




                var d1 = [];
                for (var i = 0; i < Math.PI * 2; i += 0.5) {
                    d1.push([i, Math.sin(i)]);
                }

                var d2 = [];
                for (var i = 0; i < Math.PI * 2; i += 0.5) {
                    d2.push([i, Math.cos(i)]);
                }

                var d3 = [];
                for (var i = 0; i < Math.PI * 2; i += 0.2) {
                    d3.push([i, Math.tan(i)]);
                }


                var sales_charts = $('#sales-charts').css({'width': '100%', 'height': '220px'});
                $.plot("#sales-charts", [
                    {label: "Domains", data: d1},
                    {label: "Hosting", data: d2},
                    {label: "Services", data: d3}
                ], {
                    hoverable: true,
                    shadowSize: 0,
                    series: {
                        lines: {show: true},
                        points: {show: true}
                    },
                    xaxis: {
                        tickLength: 0
                    },
                    yaxis: {
                        ticks: 10,
                        min: -2,
                        max: 2,
                        tickDecimals: 3
                    },
                    grid: {
                        backgroundColor: {colors: ["#fff", "#fff"]},
                        borderWidth: 1,
                        borderColor: '#555'
                    }
                });


                $('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
                function tooltip_placement(context, source) {
                    var $source = $(source);
                    var $parent = $source.closest('.tab-content')
                    var off1 = $parent.offset();
                    var w1 = $parent.width();

                    var off2 = $source.offset();
                    //var w2 = $source.width();

                    if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
                        return 'right';
                    return 'left';
                }


                $('.dialogs,.comments').ace_scroll({
                    size: 300
                });


                //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
                //so disable dragging when clicking on label
                var agent = navigator.userAgent.toLowerCase();
                if ("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
                    $('#tasks').on('touchstart', function (e) {
                        var li = $(e.target).closest('#tasks li');
                        if (li.length == 0)
                            return;
                        var label = li.find('label.inline').get(0);
                        if (label == e.target || $.contains(label, e.target))
                            e.stopImmediatePropagation();
                    });

                $('#tasks').sortable({
                    opacity: 0.8,
                    revert: true,
                    forceHelperSize: true,
                    placeholder: 'draggable-placeholder',
                    forcePlaceholderSize: true,
                    tolerance: 'pointer',
                    stop: function (event, ui) {
                        //just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                        $(ui.item).css('z-index', 'auto');
                    }
                }
                );
                $('#tasks').disableSelection();
                $('#tasks input:checkbox').removeAttr('checked').on('click', function () {
                    if (this.checked)
                        $(this).closest('li').addClass('selected');
                    else
                        $(this).closest('li').removeClass('selected');
                });


                //show the dropdowns on top or bottom depending on window height and menu position
                $('#task-tab .dropdown-hover').on('mouseenter', function (e) {
                    var offset = $(this).offset();

                    var $w = $(window)
                    if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
                        $(this).addClass('dropup');
                    else
                        $(this).removeClass('dropup');
                });

            })
        </script>
    </body>
    <script src="<c:url value='/template/admin/assets/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.easypiechart.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.sparkline.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.flot.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.flot.pie.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/jquery.flot.resize.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/ace-elements.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/ace.min.js' />"></script>
    <script src="<c:url value='/template/admin/assets/js/bootstrap.min.js'/>"></script>

    <!-- page specific plugin scripts -->
    <script src="<c:url value='/template/admin/assets/js/jquery-ui.min.js'/>"></script>
</html>