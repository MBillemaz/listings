$(document).on('turbolinks:load', function(){

  initModal = function(el) {
    that = $(el)
    window.listingId = that.data('id');
    $('form').removeClass('busy');
    $('form').find("[name='message']").val('');
  }

  $("[data-do='showContactModal']").click(function(e) {
    if($(this).data('user') != ''){
      e.preventDefault();
      initModal(this);
      $("[data-is='contactModal']").modal();

      return false;
    }
  });

  $("[data-do='showChatModal']").click(function(e) {
    e.preventDefault();
    $("[data-is='chatModal']").modal();
  });

  $("[data-is='contactForm']").submit(function() {
    form = $(this);
    $.ajax({
      method: 'post',
      url: form.attr('action'),
      beforeSend: function( xhr ) {
        form.addClass('busy');
      },
      data: {
        listing_id: window.listingId,
        message: form.find("[name='message']").val()
      }
    }).done(function() {
      $("[data-is='contactModal']").modal('hide');
    });

    return false;
  });

  $(document).on("keypress", "[data-is='chat']", function(event) {
     if (event.keyCode === 13) { // return/enter = send
       App.chat.speak(event.target.value);
       event.target.value = '';
       return event.preventDefault();
     }
   });

  $("[data-do='setLocale']").change(function() {
    window.location.href = $(this).val();
  })

})
