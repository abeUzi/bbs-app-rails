$(function() {
  checkValidateCreateResponse = () => {
    let err = false;
    if ($('.create-response-form__input--text').val().length == 0) {
      $('#create-response-form__valid--text').show();
      err = true;
    } else {
      $('#create-response-form__valid--text').hide();
    }

    if (err === false) {
      $('#create-response-form').submit();
    }
  };
});
