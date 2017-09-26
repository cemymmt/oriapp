$(document).on('turbolinks:load', function() {

  $('#inc_search').on('keyup', searchUsers);
  $('.label').on('click', '.user-search-add', function() {
  $this = $(this);
    chooseuni($this);
    });

});

function bulidSearchUserHTML(uni) {
  // console.log(uni);
  var html =
    '<div class = "chat-group-user chat-remove clearfix">' +
      '<p class = "user-search-add" data-uni-id="' + uni.id + '"data-uni-name="'+ uni.name +'">'
        + uni.name +
      '</p>' +
      '<a class ="chat-group-user__btn chat-group-user__btn--add" data-uni-id="' + uni.id + '"data-uni-name="'+ uni.name + '">' +
      '</a>' +
    '</div>'
  ;
  return html;
}

function buildAddUserHTML(id, name) {
  var html =
    '<div class = "chat-group-user clearfix" id="chat-group-user-${id}">' +
      '<p class = "chat-group-user__name">'
       + name +
      '</p>' +
      '<a class="user-search-remove chat-group-user__btn  chat-group-user__btn--remove" data-user-id="' + id + '">' +
      '</a>' +
      '<input value="' + id + '", name="student[uni_id]" type="hidden" />' +
    '</div>'
  ;
  return html;
}

function searchUsers() {
  var inputname = $(this).val();
  var preInput = "";
  if(inputname !== preInput){
  $.ajax({
    type: 'GET',
    url: '/unis/choose',
    data: {
      name: inputname,
    },
    dataType: 'json'
  })
  .done(function(uni) {
    var insertHTML = '';

    uni.forEach(function(uni){
      insertHTML += bulidSearchUserHTML(uni);
    });


    $('#user-search-result').html(insertHTML);
  })
  .fail(function(){
    alert('error');
  });
  preIput = inputname;
  } else {
    $(".chat-remove").remove();
  }
}

function chooseuni($this) {
    var uniid = $this.data('uni-id');
    var uniname = $this.data('uni-name');


    insertHTML = buildAddUserHTML(uniid, uniname);
    $('.user-search-result').hide();
    $('#inc_search').val(uniname);

    var buildinput =
      '<input value="' + uniid + '", name="student[uni_id]" type="hidden" />';
    $('#buildinput').append(buildinput);

}


