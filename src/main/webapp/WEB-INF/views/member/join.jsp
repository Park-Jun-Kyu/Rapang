<%--
  Created by IntelliJ IDEA.
  User: daily
  Date: 2020-07-08
  Time: 오후 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title> JARDIN SHOP </title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="JARDIN SHOP" />
    <meta name="keywords" content="JARDIN SHOP" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
    <link rel="stylesheet" type="text/css" href="css/reset.css?v=Y" />
    <link rel="stylesheet" type="text/css" href="css/layout.css?v=Y" />
    <link rel="stylesheet" type="text/css" href="css/content.css?v=Y" />
    <script type="text/javascript" src="js/joinCheck.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/top_navi.js"></script>
    <script type="text/javascript" src="js/left_navi.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/idangerous.swiper-2.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.anchor.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <script type="text/javascript" src="js/respond.min.js"></script>

    <![endif]-->
    <script type="text/javascript">
        $(document).ready(function() {



        });
    </script>
</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
    <div class="iewrap">
        <p class="img"><img src="images/ico/ico_alert.gif" alt="알림" /></p>
        <p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
        <ul>
            <li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
            <li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
            <li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
            <li><a href="http://www.apple.com/safari" target="_blank"><img src="images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
            <li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>
        </ul>
        <p class="btn" onclick="msiehide();"><img src="images/ico/ico_close.gif" alt="닫기" /></p>
    </div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
<script type="text/javascript">

    var settimediv = 200000; //지속시간(1000= 1초)
    var msietimer;

    $(document).ready(function () {
        msiecheck();
    });

</script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode;
                document.getElementById("address").value = roadAddr;
                document.getElementById("address").value = data.jibunAddress;

                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("").value = extraRoadAddr;
                } else {
                    document.getElementById("").value = '';
                }


            }
        }).open();
    }
</script>


<div id="allwrap">
    <div id="wrap">

        <div id="header">

            <div id="snbBox">
                <h1><img src="images/txt/logo.gif" alt="JARDIN SHOP" /></h1>
                <div id="quickmenu">
                    <div id="mnaviOpen"><img src="images/btn/btn_mnavi.gif" width="33" height="31" alt="메뉴열기" /></div>
                    <div id="mnaviClose"><img src="images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
                    <ul>
                        <li><a href="event">EVENT</a></li>
                        <li><a href="#">CUSTOMER</a></li>
                        <li><a href="#">COMMUNITY</a></li>
                    </ul>
                </div>
                <div id="snb">
                    <ul>
                        <li><a href="login">LOGIN</a></li>
                        <li><a href="join">JOIN</a></li>
                        <li><a href="#">MY PAGE</a></li>
                        <li><a href="#">CART</a></li>
                    </ul>

                    <div id="search">
                        <input type="text" class="searchType" />
                        <input type="image" src="images/btn/btn_main_search.gif" width="23" height="20" alt="검색하기" />
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
                    <li><a href="#">MEMBERSHIP</a></li>
                    <li class="last">회원가입</li>
                </ol>
            </div>

            <div id="outbox">
                <div id="left">
                    <div id="title2">MEMBERSHIP<span>멤버쉽</span></div>
                    <ul>
                        <li><a href="#" id="leftNavi1">로그인</a></li>
                        <li><a href="#" id="leftNavi2">회원가입</a></li>
                        <li><a href="#" id="leftNavi3">아이디/<span>비밀번호 찾기</span></a></li>
                        <li><a href="#" id="leftNavi4">회원약관</a></li>
                        <li><a href="#" id="leftNavi5">개인정보<span>취급방침</span></a></li>
                        <li class="last"><a href="#" id="leftNavi6">이메일무단<span>수집거부</span></a></li>
                    </ul>
                </div><script type="text/javascript">initSubmenu(2,0);</script>


                <!-- contents -->
                <div id="contents">
                    <div id="member">
                        <h2><strong>회원가입</strong><span>회원으로 가입하시면 보다 더 다양한 혜택을 누리실 수 있습니다.</span></h2>

                        <!-- STEP -->
                        <div class="stepWrap">
                            <div class="step stepon">
                                <p class="web">STEP 01</p>
                                <p class="txt">실명확인</p>
                                <p class="ck"><img src="images/bg/bg_step.png" alt="현재위치" /></p>
                            </div>

                            <div class="step">
                                <p class="web">STEP 02</p>
                                <p class="txt">약관 동의</p>
                            </div>

                            <div class="step">
                                <p class="web">STEP 03</p>
                                <p class="txt"><span>회원정보</span> <span>입력</span></p>
                            </div>

                            <div class="step">
                                <p class="web">STEP 04</p>
                                <p class="txt"><span>회원가입</span> <span>완료</span></p>
                            </div>
                        </div>
                        <!-- //STEP -->


                        <div class="attention">
                            <ul>
                                <li>* 표시된 항목은 필수 항목이므로 반드시 입력하셔야 회원가입이 진행됩니다.</li>
                            </ul>
                        </div>


                        <div class="memberbd">

                            <table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일수신여부, 주소, 휴대폰, 유선전화, 생년월일 순으로 회원가입 정보를 등록할수 있습니다." class="memberWrite" border="1" cellspacing="0">
                                <caption>회원가입 입력</caption>
                                <colgroup>
                                    <col width="22%" class="tw30" />
                                    <col width="*" />
                                </colgroup>
                                <tbody>
                                <form action="joinNow" method="post" name="joinNow" id="joinNow">
                                <tr>
                                    <th scope="row"><span>이름 *</span></th>
                                    <td><input type="text" name="r_name" id="r_name" class="w134" ></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>아이디 *</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li class="r10"><input type="text" id="r_id" name="r_id" class="w134" onkeyup="idOverlapChk()" ></li>
<%--                                            <li><button type="button" onclick="idOverlapChk()"  class="nbtnMini">중복확인</button></li>--%>
                                            <li class="pt5"><span class="mvalign" id="r_idChk" name="r_idChk">첫 글자는 영문으로 4~16자 까지 가능, 영문, 숫자와 특수기호(_)만 사용 가능</span></li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>비밀번호 *</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li class="r10"><input type="password" id="r_pw" name="r_pw" class="w134" /></li>
                                            <li><span class="mvalign">※ 영문 / 숫자 혼용으로 4~20자 까지 가능.</span></li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>비밀번호 확인 *</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li class="r10"><input type="password" id="r_pw2" name="r_pw2" class="w134" /></li>
                                            <li>
                                                <span class="mvalign black">* 비밀번호가 일치입니다.</span>
                                                <span class="mvalign orange">* 비밀번호가 일치하지 않습니다.</span>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>이메일</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li><input type="text" name="email1" class="w134" /></li>
                                            <li><span class="valign">&nbsp;@&nbsp;</span></li>
                                            <li class="r10"><input type="text" name="email2" class="w134" disabled ="disabled" /></li>
                                            <li>
                                                <select id="emailList" name="email3" onchange="emailChange()">
                                                    <option value="0">선택하세요</option>
                                                    <option value="1">직접입력</option>
                                                    <option value="daum.net">daum.net</option>
                                                    <option value="hanmail.net">hanmail.net</option>
                                                    <option value="nate.com">nate.com</option>
                                                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                                                    <option value="paran.com">paran.com</option>
                                                    <option value="empal.com">empal.com</option>
                                                    <option value="hotmail.com">hotmail.com</option>
                                                    <option value="korea.com">korea.com</option>
                                                    <option value="lycos.co.kr">lycos.co.kr</option>
                                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                                    <option value="hanafos.com">hanafos.com</option>
                                                    <option value="chol.com">chol.com</option>
                                                    <option value="gmail.com">gmail.com</option>
                                                    <option value="empas.com">empas.com</option>
                                                </select>&nbsp;&nbsp;&nbsp;
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>이메일 수신여부 *</span></th>
                                    <td>
                                        <p>쟈뎅에서 진행되는 이벤트와 쇼핑에 대한 정보를 이메일로 받아보시겠습니까?</p>
                                        <ul class="question">
                                            <li>
                                                <input type="radio" name="receive" id="receive_yes" class="radio_t" value="0"/><label for="receive_yes">예</label>
                                            </li>
                                            <li>
                                                <input type="radio" name="receive" id="receive_no" class="radio_t" value="1"/><label for="receive_no">아니오</label>
                                            </li>
                                        </ul>
                                        <p class="gray">* 거래관련 정보는 고객님의 거래안전을 위하여 이메일 수신거부와 관계없이 발송됩니다.</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>주소 *</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li>
                                                <input type="text" class="w134" id="zip" name="zip"/>&nbsp;
                                            </li>
                                            <li><button type="button" href="javascript:;" onclick="sample4_execDaumPostcode()" class="addressBtn"><span>우편번호 찾기</span></button></li>
                                            <li class="pt5"><input type="text" class="addressType" name="address" id="address" /></li>
                                            <li class="cb">
                                                <span class="mvalign">※ 상품 배송 시 받으실 주소입니다. 주소를 정확히 적어 주세요.</span>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>휴대폰 *</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li>
                                                <select name="phone1" id="phone1">
                                                    <option value="010" selected="selected">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                </select>
                                            </li>
                                            <li>&nbsp;<span class="valign">-</span>&nbsp;</li>
                                            <li><input type="text" name="phone2" id="phone2" class="w74" maxlength="4" /> <span class="valign">-</span>&nbsp;</li>
                                            <li class="r10"><input type="text" name="phone3" id="phone3" class="w74" maxlength="4" /></li>
                                            <li class="cb pt5"><span class="mvalign">※ SMS 서비스를 받아보시겠습니까?</span></li>
                                            <li class="pt5">
                                                <ul class="baseQues">
                                                    <li>
                                                        <input type="radio" name="sms" id="sms_yes" class="radio_t" value="0"/><label for="sms_yes">예</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" name="sms" id="sms_no" class="radio_t" value="1"/><label for="sms_no">아니오</label>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>유선전화</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li>
                                                <select name="tel1">
                                                    <option value="02" selected="selected">02</option>
                                                    <option value="031">031</option>
                                                    <option value="032">032</option>
                                                    <option value="033">033</option>
                                                    <option value="041">041</option>
                                                    <option value="042">042</option>
                                                    <option value="043">043</option>
                                                    <option value="051">051</option>
                                                    <option value="052">052</option>
                                                    <option value="053">053</option>
                                                    <option value="054">054</option>
                                                    <option value="055">055</option>
                                                    <option value="061">061</option>
                                                    <option value="062">062</option>
                                                    <option value="063">063</option>
                                                    <option value="064">064</option>
                                                    <option value="070">070</option>
                                                </select>
                                            </li>
                                            <li>&nbsp;<span class="valign">-</span>&nbsp;</li>
                                            <li><input type="text" name="tel2" class="w74" maxlength="4" /> <span class="valign">-</span>&nbsp;</li>
                                            <li><input type="text" name="tel3" class="w74" maxlength="4" /></li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>생년월일</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li>
                                                <select name="year">
                                                    <option value='' selected="selected">선택하세요</option>
                                                    <script type="text/javascript">
                                                        //<![CDATA[
                                                        for(var i=1940; i<=2014; i++){
                                                            document.write("<option value='"+i+"'>" + i + "년"+ "</option>");
                                                        };
                                                        //]]>
                                                    </script>
                                                </select>
                                            </li>
                                            <li>&nbsp;<span class="valign" >년</span>&nbsp;&nbsp;&nbsp;</li>
                                            <li>
                                                <select name="month">
                                                    <option value=''  selected="selected">선택하세요</option>
                                                    <script type="text/javascript">
                                                        //<![CDATA[
                                                        for(var i=1; i<=12; i++){
                                                            if(i<10){
                                                                document.write("<option value='"+i+"'>0" + i + "월"+"</option>");
                                                            }else{
                                                                document.write("<option value='"+i+"'>" + i + "월"+ "</option>");
                                                            };
                                                        };
                                                        //]]>
                                                    </script>
                                                </select>
                                            </li>
                                            <li>&nbsp;<span class="valign">월</span>&nbsp;&nbsp;&nbsp;</li>
                                            <li>
                                                <select name="days">
                                                    <option value=''  selected="selected">선택하세요</option>
                                                    <script type="text/javascript">
                                                        //<![CDATA[
                                                        for(var i=1; i<=31; i++){
                                                            if(i<10){
                                                                document.write("<option value="+i+">0" + i + "일"+"</option>");
                                                            }else{
                                                                document.write("<option value="+i+">" + i + "일"+ "</option>");
                                                            };
                                                        };
                                                        //]]>
                                                    </script>
                                                </select>
                                            </li>
                                            <li class="r20">&nbsp;<span class="valign">일</span></li>
                                            <li class="pt5">
                                                <ul class="baseQues">
                                                    <li>
                                                        <input type="radio" name="lunar_solar" id="solar" class="radio_t" value="0"/><label for="solar">양력</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" name="lunar_solar" id="lunar" class="radio_t" value="1"/><label for="lunar">음력</label>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span>기업회원</span></th>
                                    <td>
                                        <ul class="pta">
                                            <li>
                                                <ul class="baseQues">
                                                    <li>
                                                        <input type="radio" name="business" id="partner" class="radio_t" value="0"/><label for="partner" >예</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" name="business" id="general" class="radio_t" value="1"/><label for="general">아니오</label>
                                                    </li>
                                                </ul>
                                            </li>

                                            <li class="cb">
                                                <div class="businessTy">
                                                    <div><label for="">사업자번호</label> <input class="w134" type="text"></div>
                                                    <div><label for="">사업자등록증</label> <input class="fileType" type="file"></div>
                                                </div>
                                            <li>
                                        </ul>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>


                    </div>


                    <!-- Btn Area -->
                    <div class="btnArea">
                        <div class="bCenter">
                            <ul>
                                <li><a href="#" class="nbtnbig">취소하기</a></li>
                                <li><button type="button" onclick="check()" class="sbtnMini">가입하기</button></li>
                            </ul>
                        </div>

                    </div>
                    </form>
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
                <div id="flogo"><img src="images/txt/flogo.gif" alt="JARDIN THE COFFEE CREATOR, SINCE 1984" /></div>
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

                <div id="inicis"><img src="images/ico/ico_inicis.png" alt="이니시스 결제시스템" /></div>
            </div>
        </div>
    </div>



</div>
</div>
</body>
</html>
