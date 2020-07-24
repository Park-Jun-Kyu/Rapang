function check(){

    var nameChk = /^[가-힣]{2,6}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var idChk = /^[a-zA-Z0-9]{4,12}$/;
    // var pwChk = /^(?=.*[a-zA-Z])(?=.*[0-9]).{4,20}$/; // 비밀번호 유효성검사
    var pwChk = /^(?=.*[a-zA-Z])(?=.*[0-9]).{4,20}$/;
    var mailChk = /^[a-zA-Z0=9]{6,12}$/;


    if(joinNow.r_name.value==""){
        alert("이름을 입력하세요");
        joinNow.r_name.focus();
        return false;

    }

    if(!nameChk.test(joinNow.r_name.value)){
        alert("이름은 한글로 2~6자로 입력하라우");
        joinNow.r_name.value=="";
        joinNow.r_name.focus;
        return false;

    }


    if(joinNow.r_id.value==""){
        alert("아이디를 입력하세요");
        joinNow.r_id.focus();
        return false;
    }

    if(!idChk.test(joinNow.r_id.value)){
        alert("간나색기 똑바로 입력하라우");
        joinNow.r_id.value="";
        joinNow.r_id.focus();
        return false;
    }
    if(joinNow.r_pw.value==""){
        alert("비번이 비어있다우");
        joinNow.r_pw.focus();
        return false;
    }

    if(!(pwChk.test(joinNow.r_pw.value))){
        alert('영문 숫자 혼합으로 4~20자 까지 입력해주세요.');
        joinNow.r_pw.value = "";
        joinNow.r_pw.focus();
        return false;
    }



    if(joinNow.r_pw2.value==""){
        alert("비번 확인창이 비어있따우");
        joinNow.r_pw2.focus();
        return false;
    }

    if(!(joinNow.r_pw.value==joinNow.r_pw2.value)){
        alert("비번이 동일하지 않다우 간나색기");
        joinNow.r_pw2.value="";
        joinNow.r_pw2.focus();
        return false;
    }



    if(joinNow.email1.value==""){
        alert("메일을 입력하라우");
        joinNow.email1.focus;
        return false;
    }
    if(joinNow.email2.value=""){
        alert("메일을 입력하라우");
        joinNow.email2.focus;
        return false;
    }
    if(joinNow.email3.value=""){
        alert("메일을 입력하라우");
        joinNow.email3.focus;
        return false;
    }





    return joinNow.submit();

}

function idOverlapChk(){
    $.ajax({
        type:'post',
        url:'./idOverlapChk',
        data:{
            r_id : $('#r_id').val()
        },
        success:function(data) {
            if(data==1){
                $('#r_idChk').text('이미 사용중인 아이디입니다');
                $('#r_idChk').css('color','red');
            }else{
                $('#r_idChk').text('사용 가능한 아이디입니다');
                $('#r_idChk').css('color','blue');
                return true;
            }
        },
        error:function () {
            alert("통신실패");
        }
    });


}


function emailChange(){

    if(document.joinNow.email3.options[document.joinNow.email3.selectedIndex].value=='0'){

        document.joinNow.email2.disabled=true;

        document.joinNow.email2.value="";
    }

    if(document.joinNow.email3.options[document.joinNow.email3.selectedIndex].value=='1'){

        document.joinNow.email2.disabled=false;

        document.joinNow.email2.value="";

        document.joinNow.email2.focus();

    }else{

        document.joinNow.email2.value = document.joinNow.email3.value;

    }

}


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