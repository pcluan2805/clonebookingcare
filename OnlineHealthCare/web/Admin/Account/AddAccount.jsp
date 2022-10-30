<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
        <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet" id="main-ace-style" />
        <script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
        <script type='text/javascript' src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
        <script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý  tài khoản</title>
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

                <div class="main-content-inner">
                    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="<c:url value='/admin-home'/>">Trang chủ</a>
                            </li>
                            <li>
                                <a href="<c:url value='/admin-account'/>">Danh sách tài khoản</a>
                            </li>
                            <li class="active">Thêm tài khoản</li>
                        </ul>
                        <!-- /.breadcrumb -->
                    </div>
                    <div class="container">
                        <h2>Thêm mới tài khoản</h2>
                        <c:if test="${not empty messageResponse}">
                            <div id="message" class="alert alert-${alert}">
                                ${messageResponse}
                            </div>
                        </c:if>
                        <form action="<c:url value='/'/>" id="formSubmit" method="post" enctype="multipart/form-data">
                            <div class="form-group col-sm-12">
                                <label>Email</label>
                                <input id="email" name="email" type="email" class="form-control"  aria-describedby="emailHelp" placeholder="Nhập vào email">
                            </div>
                            <div class="form-group col-sm-12">
                                <label>Mật khẩu</label>
                                <input id="password" name="password" type="password" class="form-control" placeholder="Nhập vào mật khẩu">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Họ</label>
                                    <input id="firstName" name="firstName" type="text" class="form-control">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Tên</label>
                                    <input id="lastName" name="lastName" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group col-sm-6">
                                <label>Chọn vai trò</label>
                                <select class="form-control" id="role" name="role">
                                    <option value="1">Quản trị viên</option>
                                    <option value="2">Bác sĩ</option>
                                </select>
                            </div>
                            <div class="form-group col-sm-6">
                                <label>Chọn tỉnh/thành</label>
                                <select class="form-control" id="province" name="province">
                                    <c:forEach items="${provinces}" var="province">
                                        <option value="${province.id}">
                                            ${province.name}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group col-sm-9">
                                <button type="submit" onclick="hideMessage()" class="btn btn-primary">Thêm</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <!-- footer -->
            <%@ include file="/common/footer.jsp" %>
            <!-- footer -->

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse display">
                <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
            </a>
        </div>
        <script>
            function hideMessage() {
                setTimeout(function() { $("#message").hide(); }, 3000);
            }
        </script>

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
    </body>
</html>