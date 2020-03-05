$(function() {
  checkValidateCreateForum = () => {
    let err = false;
    if ($('.create-forum-form__input-category :checked').length == 0) {
      $('#create-forum-form--category').show();
      err = true;
    } else {
      $('#create-forum-form--category').hide();
    }

    if ($('.create-forum-form__input-title').val().length == 0) {
      $('#create-forum-form--title').show();
      err = true;
    } else {
      $('#create-forum-form--title').hide();
    }

    if ($('.create-forum-form__input-first-response').val().length == 0) {
      $('#create-forum-form--response').show();
      err = true;
    } else {
      $('#create-forum-form--response').hide();
    }

    if (err === false) {
      $('#create-forum-form').submit();
    }
  };
});
