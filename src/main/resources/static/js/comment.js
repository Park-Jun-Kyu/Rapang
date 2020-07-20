
function commentWrite(){

    var loginCheck =writeForm.r_id.value;



    if(loginCheck==""){
        alert('로그인후 작성 가능합니다');
        location.href='login';
        return false;
    }

    $.ajax({
        type: 'post',
        url: './comment_write',
        data: $('#writeForm').serialize(),
        success:function(data) {
           alert('댓글달기 성공');
              location.reload();
        },
        error:function(request,status,error) {

                alert("통신 불량");
                location.reload();
        //     }
        }
    });

}

function commentModify(a){


    var comment_no=a.comment_no.value;
    var content=a.content.value;
    var event_no=a.event_no.value;

    $.ajax({
        type:'post',
        url:'./comment_modify',
        data:{

            content:content,
            event_no:event_no,
            comment_no:comment_no

        },
        success:function(data) {
            alert("수정 성공");
            location.reload();
        },
        error:function(request,status,error) {
            alert("수정 실패");
            location.reload();
        }
    });

}


function commentDelete(comment_no){

    $.ajax({
        type:'post',
        url:'./comment_delete',
        data:{

            comment_no : comment_no
        },

        success:function(){
            alert('삭제 완료');
            location.reload();
        }, error:function(request,status,error) {
            location.reload();
        }
    })
}

function getCount(event_no){

    $.ajax({
        type:'post',
        url:'./comment_count',
        data: $('#writeForm').serialize(),
            event_no:event_no,

        success:function(data){

            var html = "";
            html +="총 <span class='orange'>"+data+"</span> 개의 댓글이 달려있습니다.";
            $("#getCount").html(html);
        },
        error:function(request,status,error) {
            alert("댓글 갯수 통신 실패");
        }



    })
}



function getCommentList(event_no,r_id){

    $.ajax({
        type:'post',
        url:'./getCommentList',
        data: {event_no: event_no},
        success:function(data){

            var html="";
            if(data.length>0) {
                for (var i = 0; i < data.length; i++) {
                    html += '<form name="comentForm">';
                    html += '<ul>';

                    if(data[i].r_id==r_id) {
                        html += '<li class="name">' + data[i].r_id + '<span>     ['+moment(new Date(data[i].comment_date)).format('YYYY-MM-DD hh:mm:ss')+']<p class="password">비밀번호&nbsp;&nbsp;<input type="password" class="replynum secretPw" /></p></span></li>';
                        html += '<li class="txt"  id="txt">' + data[i].content + '<input type="text" hidden="hidden" name="secretText"  </li>';
                        html += '<li class="btn">';
                        html += '<a href="javascript:;" onclick="modiShow(' + data[i].comment_no + ')" class="rebtn">수정</a>';
                        html += '<a href="javascript:;" onclick="commentDelete(' + data[i].comment_no + ')" class="rebtn">삭제</a></li>';
                        html += '</ul>'
                        html += '<ul id="modifyWindow' + data[i].comment_no + '" style="display: none;">';
                        html += '<li class="name">' + data[i].r_id + ' <span>  [' + moment(new Date(data[i].comment_date)).format('YYYY-MM-DD hh:mm:ss') + ']</span></li>';
                        html += '<li class="txt"> <textarea class="replyType" name="content" id="mos' + data[i].comment_no + '">' + data[i].content + '</textarea><input type="text" hidden="hidden" value="' + data[i].content + '" name="' + data[i].comment_no + '"></li>';
                        html += '<input type="text" hidden="hidden" id="' + data[i].comment_no + '" value=' + data[i].comment_no + '">';
                        html += '<input type="text" hidden="hidden" name="event_no"  value="'+data[i].event_no+'">';
                        html += '<input type="text" hidden="hidden" name="comment_no" value="'+data[i].comment_no+'">';
                        html += '<input type="text" hidden="hidden" name="r_id"  value="'+data[i].r_id+'">';
                        html += '<li class="btn">';
                        html += '<button type="button" class="rebtn1" onclick="commentModify(this.form)">수정</button>';
                        html += '<a href="javascript:;" class="rebtn1" onclick="modiCansel(' + data[i].comment_no + ')"> 취소</a> </li>';
                        html += '</ul>';
                    }else{
                        html += '<li class="name">' + data[i].r_id + '<span>     ['+moment(new Date(data[i].comment_date)).format('YYYY-MM-DD hh:mm:ss')+']</span></li>';
                        html += '<li class="txt">' + data[i].content + ' </li>';
                        html += '</ul>';
                    }
                    html += '</form>';
                }

            }else{
                html += "<li class='name'></li><br>";
                html += "<li class='txt'>댓글이 없습니다</li>";
            }
            $("#commentViewForm").html(html);

        },
        error:function(request,status,error) {
            alert('댓글 리스트 목록 불러오기 실패');

        }
    });
}

function modiShow(a){
    $('#modifyWindow'+a).show();
    $('.rebtn').hide();
}

function modiCansel(b){
    $('#modifyWindow'+b).hide();
    $('.rebtn').show();
    var k = $("input[name="+b+"]").val();
    $('#mos'+b).val(k);
}
