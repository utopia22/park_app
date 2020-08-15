require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
require('jquery')


$(function () {
    $('#search-park').keyup(function () {
        const $railsText = $("#search-park").val().toLowerCase()
        $('.main-contents').each(function () {
            const val = $(this).text();
            if (val.toLowerCase().includes($railsText)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });
});


$(function(){
    $('.js-modal-open').each(function(){
        $(this).on('click',function(){
            var target = $(this).data('target');
            var modal = document.getElementById(target);
            $(modal).fadeIn();
            return false;
        });
    });
    $('.js-modal-close').on('click',function(){
        $('.js-modal').fadeOut();
        return false;
    });
});
