<%--
  Created by IntelliJ IDEA.
  User: eunbin
  Date: 2022/12/09
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ include file="../../include/head.jsp"%>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <%@ include file="../../include/main_header.jsp" %>

    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../../include/left_column.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Page Header
                <small>Optional description</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <div class="col-lg-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">????????? : ${article.title}</h3>
                    </div>
                    <div class="box-body" style="height: 700px">
                        ${article.content}
                    </div>
                    <div class="box-footer">
                        <div class="user-block">
                            <img class="img-circle img-bordered-sm" src="${pageContext.request.contextPath}/dist/img/user1-128x128.jpg" alt="user image">
                            <span class="username">
                    <a href="#">${article.writer}</a>
                </span>
                            <span class="description"><fmt:formatDate pattern="yyyy-MM-dd a HH:mm" value="${article.regDate}"/></span>
                        </div>
                    </div>
                    <div class="box-footer">
                        <form role="form" method="post">
                            <input type="hidden" name="articleNo" value="${article.articleNo}">
                            <input type="hidden" name="page" value="${searchCriteria.page}">
                            <input type="hidden" name="perPageNum" value="${searchCriteria.perPageNum}">
                            <input type="hidden" name="searchType" value="${searchCriteria.searchType}">
                            <input type="hidden" name="keyword" value="${searchCriteria.keyword}">
                        </form>
                        <button type="submit" class="btn btn-primary listBtn"><i class="fa fa-list"></i> ??????</button>
                        <div class="pull-right">
                            <button type="submit" class="btn btn-warning modBtn"><i class="fa fa-edit"></i> ??????</button>
                            <button type="submit" class="btn btn-danger delBtn"><i class="fa fa-trash"></i> ??????</button>
                        </div>
                    </div>
                </div>
            </div>

        </section>

<%--        ?????? ?????? ??????--%>
        <div class="box box-warning">
            <div class="box-header with-border">
                <a class="link-black text-lg"><i class="fa fa-pencil"></i> ????????????</a>
            </div>
            <div class="box-body">
                <form class="form-horizontal">
                    <div class="form-group margin">
                        <div class="col-sm-10">
                            <textarea class="form-control" id="newReplyText" rows="3" placeholder="????????????..." style="resize: none"></textarea>
                        </div>
                        <div class="col-sm-2">
                            <input class="form-control" id="newReplyWriter" type="text" placeholder="???????????????...">
                        </div>
                        <hr/>
                        <div class="col-sm-2">
                            <button type="button" class="btn btn-primary btn-block replyAddBtn"><i class="fa fa-save"></i> ??????</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

<%--        ?????? ?????? + ????????? ??????--%>
        <div class="box box-success collapsed-box">
            <%--?????? ?????? / ?????? ?????? / ?????? ?????????, ??????--%>
            <div class="box-header with-border">
                <a href="" class="link-black text-lg"><i class="fa fa-comments-o margin-r-5 replyCount"></i></a>
                <div class="box-tools">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                        <i class="fa fa-plus"></i>
                    </button>
                </div>
            </div>
            <%--?????? ??????--%>
            <div class="box-body repliesDiv">

            </div>
            <%--?????? ?????????--%>
            <div class="box-footer">
                <div class="text-center">
                    <ul class="pagination pagination-sm no-margin">

                    </ul>
                </div>
            </div>
        </div>
        <!-- /.content -->
    </div>

    <%--?????? ?????? modal ??????--%>
    <div class="modal fade" id="modModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">????????????</h4>
                </div>
                <div class="modal-body" data-rno>
                    <input type="hidden" class="replyNo"/>
                    <%--<input type="text" id="replytext" class="form-control"/>--%>
                    <textarea class="form-control" id="replyText" rows="3" style="resize: none"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">??????</button>
                    <button type="button" class="btn btn-primary modalModBtn">??????</button>
                </div>
            </div>
        </div>
    </div>

    <%--?????? ?????? modal ??????--%>
    <div class="modal fade" id="delModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">?????? ??????</h4>
                    <input type="hidden" class="rno"/>
                </div>
                <div class="modal-body" data-rno>
                    <p>????????? ?????????????????????????</p>
                    <input type="hidden" class="rno"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">?????????.</button>
                    <button type="button" class="btn btn-primary modalDelBtn">???. ???????????????.</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <%@ include file="../../include/main_footer.jsp" %>
</div>

<!-- ./wrapper -->
<%@ include file="../../include/plugin_js.jsp"%>

<script id="replyTemplate" type="text/x-handlebars-template">

    <div class="post replyDiv" data-replyNo=>
        <div class="user-block">
            <img class="img-circle img-bordered-sm" src="/dist/img/user1-128x128.jpg" alt="user image">
            <span class="username">
                <a href="#"></a>
                <a href="#" class="pull-right btn-box-tool replyDelBtn" data-toggle="modal" data-target="#delModal">
                    <i class="fa fa-times"> ??????</i>
                </a>
                <a href="#" class="pull-right btn-box-tool replyModBtn" data-toggle="modal" data-target="#modModal">
                    <i class="fa fa-edit"> ??????</i>
                </a>
            </span>
            <span class="description"></span>
        </div>
        <div class="oldReplyText">}</div>
        <br/>
    </div>
</script>
<script type="text/javascript" src="/resources/dist/js/reply.js"></script>
<script>
    $(document).ready(function () {

        var formObj = $("form[role='form']");
        console.log(formObj);

        $(".modBtn").on("click", function () {
            formObj.attr("action", "/exchangers/article/paging/search/modify");
            formObj.attr("method", "get");
            formObj.submit();
        });

        $(".delBtn").on("click", function () {
            formObj.attr("action", "/exchangers/article/paging/search/remove");
            formObj.submit();
        });

        $(".listBtn").on("click", function () {
            formObj.attr("action", "/exchangers/article/paging/search/list");
            formObj.attr("method", "get");
            formObj.submit();
        });

    });

    eNo = "${article.articleNo}";  // ?????? ????????? ??????
    var replyPageNum = 1; // ?????? ????????? ?????? ?????????

    // ?????? ?????? : ?????????/????????????
    Handlebars.registerHelper("escape", function (replyText) {
        var text = Handlebars.Utils.escapeExpression(replyText);
        text = text.replace(/(\r\n|\n|\r)/gm, "<br/>");
        text = text.replace(/( )/gm, "&nbsp;");
        return new Handlebars.SafeString(text);
    });

    // ?????? ???????????? : ??????/?????? 2????????? ?????????
    Handlebars.registerHelper("prettifyDate", function (timeValue) {
        var dateObj = new Date(timeValue);
        var year = dateObj.getFullYear();
        var month = dateObj.getMonth() + 1;
        var date = dateObj.getDate();
        var hours = dateObj.getHours();
        var minutes = dateObj.getMinutes();
        // 2?????? ????????? ??????
        month < 10 ? month = '0' + month : month;
        date < 10 ? date = '0' + date : date;
        hours < 10 ? hours = '0' + hours : hours;
        minutes < 10 ? minutes = '0' + minutes : minutes;
        return year + "-" + month + "-" + date + " " + hours + ":" + minutes;
    });

    // ?????? ?????? ?????? ??????
    getReplies("/replies/" + articleNo + "/" + replyPageNum);

    // ?????? ?????? ??????
    function getReplies(repliesUri) {
        $.getJSON(repliesUri, function (data) {
            printReplyCount(data.pageMaker.totalCount);
            printReplies(data.replies, $(".repliesDiv"), $("#replyTemplate"));
            printReplyPaging(data.pageMaker, $(".pagination"));
        });
    }

    // ?????? ?????? ?????? ??????
    function printReplyCount(totalCount) {

        var replyCount = $(".replyCount");
        var collapsedBox = $(".collapsed-box");

        // ????????? ?????????
        if (totalCount === 0) {
            replyCount.html(" ????????? ????????????. ????????? ???????????????");
            collapsedBox.find(".btn-box-tool").remove();
            return;
        }

        // ????????? ????????????
        replyCount.html(" ???????????? (" + totalCount + ")");
        collapsedBox.find(".box-tools").html(
            "<button type='button' class='btn btn-box-tool' data-widget='collapse'>"
            + "<i class='fa fa-plus'></i>"
            + "</button>"
        );

    }

    // ?????? ?????? ?????? ??????
    function printReplies(replyArr, targetArea, templateObj) {
        var replyTemplate = Handlebars.compile(templateObj.html());
        var html = replyTemplate(replyArr);
        $(".replyDiv").remove();
        targetArea.html(html);
    }

    // ?????? ????????? ?????? ??????
    function printReplyPaging(pageMaker, targetArea) {
        var str = "";
        if (pageMaker.prev) {
            str += "<li><a href='" + (pageMaker.startPage - 1) + "'>??????</a></li>";
        }
        for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
            var strClass = pageMaker.criteria.page == i ? "class=active" : "";
            str += "<li " + strClass + "><a href='" + i + "'>" + i + "</a></li>";
        }
        if (pageMaker.next) {
            str += "<li><a href='" + (pageMaker.endPage + 1) + "'>??????</a></li>";
        }
        targetArea.html(str);
    }

    // ?????? ????????? ?????? ?????? ?????????
    $(".pagination").on("click", "li a", function (event) {
        event.preventDefault();
        replyPageNum = $(this).attr("href");
        getReplies("/replies/" + articleNo + "/" + replyPageNum);
    });
    }

    // ?????? ?????? ?????? ?????? ?????????
    $(".replyAddBtn").on("click", function () {

        // ?????? form ?????????
        var replyWriterObj = $("#newReplyWriter");
        var replyTextObj = $("#newReplyText");
        var replyWriter = replyWriterObj.val();
        var replyText = replyTextObj.val();

        // ?????? ???????????? ??????
        $.ajax({
            type : "post",
            url : "/replies/",
            headers : {
                "Content-Type" : "application/json",
                "X-HTTP-Method-Override" : "POST"
            },
            dataType : "text",
            data : JSON.stringify({
                articleNo : articleNo,
                replyWriter : replyWriter,
                replyText : replyText
            }),
            success: function (result) {
                console.log("result : " + result);
                if (result === "regSuccess") {
                    alert("????????? ?????????????????????.");
                    replyPageNum = 1;  // ????????? 1??? ?????????
                    getReplies("/replies/" + articleNo + "/" + replyPageNum); // ?????? ?????? ??????
                    replyTextObj.val("");   // ?????? ????????? ????????????
                    replyWriterObj.val("");   // ?????? ????????? ????????????
                }
            }
        });
    });

    // ?????? ????????? ?????? modal?????? ????????? ????????? ????????? ??????
    $(".repliesDiv").on("click", ".replyDiv", function (event) {
        var reply = $(this);
        $(".replyNo").val(reply.attr("data-replyNo"));
        $("#replyText").val(reply.find(".oldReplyText").text());
    });

    // modal ?????? ?????? ???????????? ?????? ?????????
    $(".modalModBtn").on("click", function () {
        var replyNo = $(".replyNo").val();
        var replyText = $("#replyText").val();
        $.ajax({
            type : "put",
            url : "/replies/" + replyNo,
            headers : {
                "Content-Type" : "application/json",
                "X-HTTP-Method-Override" : "PUT"
            },
            dataType : "text",
            data: JSON.stringify({
                replyText : replyText
            }),
            success: function (result) {
                console.log("result : " + result);
                if (result === "modSuccess") {
                    alert("????????? ?????????????????????.");
                    getReplies("/replies/" + articleNo + "/" + replyPageNum); // ?????? ?????? ??????
                    $("#modModal").modal("hide"); // modal ??? ??????
                }
            }
        })
    });

    // modal ?????? ?????? ???????????? ?????? ?????????
    $(".modalDelBtn").on("click", function () {
        var replyNo = $(".replyNo").val();
        $.ajax({
            type: "delete",
            url: "/replies/" + replyNo,
            headers: {
                "Content-Type" : "application/json",
                "X-HTTP-Method-Override" : "DELETE"
            },
            dataType: "text",
            success: function (result) {
                console.log("result : " + result);
                if (result === "delSuccess") {
                    alert("????????? ?????????????????????.");
                    getReplies("/replies/" + articleNo + "/" + replyPageNum); // ?????? ?????? ??????
                    $("#delModal").modal("hide"); // modal ??? ??????
                }
            }
        });
    });
</script>
</body>
</html
