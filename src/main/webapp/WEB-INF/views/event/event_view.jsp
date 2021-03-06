<%--
  Created by IntelliJ IDEA.
  User: daily
  Date: 2020-07-09
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title> JARDIN SHOP </title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="JARDIN SHOP" />
    <meta name="keywords" content="JARDIN SHOP" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
    <link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
    <link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
    <script type="text/javascript" src="../js/comment.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/top_navi.js"></script>
    <script type="text/javascript" src="../js/left_navi.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery.anchor.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="../js/html5.js"></script>
    <script type="text/javascript" src="../js/respond.min.js"></script>


    <![endif]-->
    <script type="text/javascript">
    </script>
<%--  모멘트 js 가져오기--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.0/moment.min.js"></script>

</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
    <div class="iewrap">
        <p class="img"><img src="../images/ico/ico_alert.gif" alt="알림" /></p>
        <p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
        <ul>
            <li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="../images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
            <li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="../images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
            <li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="../images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
            <li><a href="http://www.apple.com/safari" target="_blank"><img src="../images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
            <li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="../images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>
        </ul>
        <p class="btn" onclick="msiehide();"><img src="../images/ico/ico_close.gif" alt="닫기" /></p>
    </div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
<script type="text/javascript">

    $(document).ready(function() {

        getCommentList('${event_view.event_no}','${r_id}');
        getCount('${event_view.event_no}');
    });

    var settimediv = 200000; //지속시간(1000= 1초)
    var msietimer;

    $(document).ready(function () {
        msiecheck();
    });

    var msiecheck = function () {
        var browser = navigator.userAgent.toLowerCase();
        if (browser.indexOf('msie 6') != -1 ||
            browser.indexOf('msie 7') != -1 ||
            browser.indexOf('msie 8') != -1) {
            msieshow();
        }
        else {
            msiehide();
        }
    }

    var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
    }

    var msiehide = function () {
        $("#ieUser").hide();
        clearTimeout(msietimer);
    }


</script>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${comment_date}" pattern="yyyy/MM/dd" var="comment_date" />


<script type="text/javascript">



</script>

<script type="text/javascript" >


</script>


<div id="allwrap">,
    <div id="wrap">

        <div id="header">

            <div id="snbBox">
                <h1><img src="../images/txt/logo.gif" alt="JARDIN SHOP" /></h1>
                <div id="quickmenu">
                    <div id="mnaviOpen"><img src="../images/btn/btn_mnavi.gif" width="33" height="31" alt="메뉴열기" /></div>
                    <div id="mnaviClose"><img src="../images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
                    <ul>
                        <li><a href="#">EVENT</a></li>
                        <li><a href="#">CUSTOMER</a></li>
                        <li><a href="#">COMMUNITY</a></li>
                    </ul>
                </div>
                <div id="snb">
                    <ul>
                        <li><a href="login">LOGIN</a></li>
                        <li><a href="#">JOIN</a></li>
                        <li><a href="#">MY PAGE</a></li>
                        <li><a href="#">CART</a></li>
                    </ul>

                    <div id="search">
                        <input type="text" class="searchType" />
                        <input type="image" src="../images/btn/btn_main_search.gif" width="23" height="20" alt="검색하기" />
                    </div>
                </div>
            </div>
        </div>


        <!-- GNB -->
        <div id="gnb">

            <div id="top">
                <ul>
                    <li class="brand t1"><a href="#" id="topNavi1">JARDIN’s BRAND</a>
                        <ul id="topSubm1">
                            <li><a href="#">클래스</a></li>
                            <li><a href="#">홈스타일 카페모리</a></li>
                            <li><a href="#">드립커피백</a></li>
                            <li><a href="#">카페리얼 커피</a></li>
                            <li><a href="#">오리지널커피백</a></li>
                            <li><a href="#">카페리얼 음료</a></li>
                            <li><a href="#">마일드커피백</a></li>
                            <li><a href="#">워터커피</a></li>
                            <li><a href="#">카페포드</a></li>
                            <li><a href="#">모히또파티</a></li>
                            <li><a href="#">테이크아웃 카페모리</a></li>
                            <li><a href="#">포타제</a></li>
                        </ul>
                    </li>
                    <li class="t2"><a href="#" id="topNavi2">원두</a>
                        <ul id="topSubm2">
                            <li><a href="#">클래스</a></li>
                            <li><a href="#">로스터리샵</a></li>
                            <li><a href="#">커피휘엘</a></li>
                            <li><a href="#">산지별 생두</a></li>
                        </ul>
                    </li>
                    <li class="t1"><a href="#" id="topNavi3">원두커피백</a>
                        <ul id="topSubm3">
                            <li><a href="#">드립커피 로스트</a></li>
                            <li><a href="#">오리지널커피백</a></li>
                            <li><a href="#">마일드커피백</a></li>
                        </ul>
                    </li>
                    <li class="t2"><a href="#" id="topNavi4">인스턴트</a>
                        <ul id="topSubm4">
                            <li><a href="#">까페모리</a></li>
                            <li><a href="#">홈스타일카페모리</a></li>
                            <li><a href="#">포타제</a></li>
                        </ul>
                    </li>
                    <li class="t1"><a href="#" id="topNavi5">음료</a>
                        <ul id="topSubm5">
                            <li><a href="#">까페리얼</a></li>
                            <li><a href="#">워터커피</a></li>
                            <li><a href="#">모히또</a></li>
                        </ul>
                    </li>
                    <li class="t2"><a href="#" id="topNavi6">커피용품</a>
                        <ul id="topSubm6">
                            <li><a href="#">종이컵</a></li>
                            <li><a href="#">커피필터</a></li>
                            <li><a href="#">머신 등</a></li>
                        </ul>
                    </li>
                    <li class="t1"><a href="#" id="topNavi7">선물세트</a></li>
                    <li class="t2"><a href="#" id="topNavi8">대량구매</a></li>
                </ul>
            </div>

            <script type="text/javascript">initTopMenu();</script>
        </div>
        <!-- //GNB -->

        <!-- container -->
        <div id="container">

            <div id="location">
                <ol>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">EVENT</a></li>
                    <li class="last">진행중 이벤트</li>
                </ol>
            </div>

            <div id="outbox">
                <div id="left">
                    <div id="title2">EVENT<span>이벤트</span></div>
                    <ul>
                        <li><a href="#" id="leftNavi1">진행중 이벤트</a></li>
                        <li><a href="#" id="leftNavi2">종료된 이벤트</a></li>
                        <li class="last"><a href="#" id="leftNavi3">당첨자 발표</span></a></li>
                    </ul>
                </div><script type="text/javascript">initSubmenu(1,0);</script>




                <fmt:formatDate value="${now}" var="today" />
                <fmt:formatDate value="${event_view.start_date}" pattern="yyyy/MM/dd" var="start_date"/>
                <fmt:formatDate value="${event_view.end_date}" pattern="yyyy/MM/dd" var="end_date"/>



                <!-- contents -->
                <div id="contents">
                    <div id="mypage">
                        <h2><strong>진행중 이벤트</strong><span>쟈뎅샵의 특별한 혜택이 가득한 이벤트에 참여해 보세요.</span></h2>

                        <div class="viewDivMt">
                            <div class="viewHead">
                                <div class="subject">
                                    <ul>
                                        <li>${event_view.title}</li>
                                    </ul>
                                </div>
                                <div class="day">
                                    <p class="txt">이벤트 기간<span> <fmt:formatDate value="${event_view.start_date}" pattern="yyyy/MM/dd"/> ~ <fmt:formatDate value="${event_view.end_date}" pattern="yyyy/MM/dd"/></span></p>
                                </div>
                            </div>

                            <div class="viewContents">
                                <img src="eventUpload/${event_view.content}">
                            </div>
                        </div>


                        <!-- 이전다음글 -->
                        <div class="pnDiv web">
                            <table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
                                <caption>이전다음글</caption>
                                <colgroup>
                                    <col width="100px" />
                                    <col width="*" />
                                    <col width="100px" />
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="pre">PREV</th>
                                    <td><a href="#">상품 재입고는 언제 되나요?</a></td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <th class="next">NEXT</th>
                                    <td>다음 글이 없습니다.</td>
                                    <td>&nbsp;</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- //이전다음글 -->


                        <!-- 댓글 작성폼-->
                        <div class="replyWrite">
                            <form id="writeForm" name="writeForm" method="post">
                            <ul>
                                <li class="in">
                                    <p class="txt" id="getCount"></p>
                                    <c:choose>
                                        <c:when test="${r_id == null}">
                                            <textarea name="content" id="content" class="replyType"
                                                      readonly="readonly" value="먼저 로그인을 해야 합니다.">먼저 로그인을 해야 합니다.
                                            </textarea>
                                            <input type="text" hidden="hidden" name="event_no" value="${event_view.event_no}">
                                            <input type="text" hidden="hidden" id="r_id" name="r_id" value="${r_id}">
                                </li>
                                 <li class="btn"><button type="button" onclick="commentWrite()" class="replyBtn">등록</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <p class="password">비밀번호&nbsp;&nbsp;<input type="password" id="r_pw" name="r_pw" class="replynum" /></p>
                                            <textarea name="content" id="content" class="replyType" value="${event_view.content}"></textarea>
                                            <input type="text" hidden="hidden" name="event_no" value="${event_view.event_no}">
                                            <input type="text" hidden="hidden" id="r_id" name="r_id" value="${r_id}">
                                            </li>
                                            <li class="btn"><button type="button" onclick="commentWrite()" class="replyBtn">등록</a></li>
                                        </c:otherwise>
                                    </c:choose>


                            </ul>
                            <p class="ntic"></p>
                            </form>
                        </div>





<%--                        <c:forEach var="commentList" items="${commentList}">--%>

<%--                        <fmt:formatDate value="${commentList.comment_date}" pattern="yyyy/MM/dd" var="today" />--%>
<%--                        <form id="modifyForm" name="modifyForm" method="post" >--%>
                        <div class="replyBox" id="commentViewForm">
<%--                                ajax--%>

<%--                            댓글 출력--%>
<%--                            <ul>--%>
<%--                                <li class="name">${commentList.r_id} <span>  <fmt:formatDate value="${commentList.comment_date}" pattern="yyyy/MM/dd"/></span></li>--%>
<%--                                <li class="txt">${commentList.content}</li>--%>
<%--                                <li class="btn">--%>
<%--                                    <a href="javascript:;" onclick="modiShow(${commentList.comment_no})" class="rebtn">수정</a>--%>
<%--                                    <a href="#" class="rebtn">삭제</a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--&lt;%&ndash;                             댓글 수정창&ndash;%&gt;--%>
<%--                            <ul id="modifyWindow${commentList.comment_no}" style="display: none;">--%>
<%--                                <li class="name">${commentList.r_id} <span>  <fmt:formatDate value="${commentList.comment_date}" pattern="yyyy/MM/dd"/></span></li>--%>
<%--                                <li class="txt"> <textarea class="replyType">${commentList.content}</textarea></li>--%>

<%--                                <input type="text" hidden="hidden" id="${commentList.comment_no}" value=${commentList.comment_no}">--%>
<%--                                <li class="btn">--%>
<%--                                    <a href="javascript:;" class="rebtn1">수정</a>--%>
<%--                                    <a href="javascript:;" class="rebtn1">삭제</a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
                        </div>
<%--                        </c:forEach>--%>
<%--                        </form>--%>
                        <!-- //댓글 -->


                        <!-- Btn Area -->
                        <div class="btnArea">
                            <div class="bRight">
                                <ul>
                                    <li><a href="#" class="sbtnMini mw">목록</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- //Btn Area -->

                    </div>
                </div>
                <!-- //contents -->




            </div>
        </div>
        <!-- //container -->




        <div id="footerWrap">
            <div id="footer">
                <div id="fnb">
                    <ul>
                        <li class="left"><a href="#">개인정보취급방침</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li class="left"><a href="#">이메일무단수집거부</a></li>
                        <li><a href="#">고객센터</a></li>
                        <li class="left brand"><a href="#">쟈뎅 브랜드 사이트</a></li>
                    </ul>
                </div>

                <div id="finfo">
                    <div id="flogo"><img src="../images/txt/flogo.gif" alt="JARDIN THE COFFEE CREATOR, SINCE 1984" /></div>
                    <address>
                        <ul>
                            <li>㈜쟈뎅</li>
                            <li>대표자 윤영노</li>
                            <li class="tnone">주소 서울시 강남구 논현동 4-21번지 영 빌딩</li>
                            <li class="webnone">소비자상담실 02)546-3881</li>
                            <li>사업자등록번호 211-81-24727</li>
                            <li class="tnone">통신판매신고 제 강남 – 1160호</li>
                            <li class="copy">COPYRIGHT © 2014 JARDIN <span>ALL RIGHTS RESERVED.</span></li>
                        </ul>
                    </address>

                    <div id="inicis"><img src="../images/ico/ico_inicis.png" alt="이니시스 결제시스템" /></div>
                </div>
            </div>
        </div>



    </div>
</div>
</body>
</html>