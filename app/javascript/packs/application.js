require("@rails/ujs").start()
require("bootstrap/dist/js/bootstrap")



$(function () {
    $('#search-park').keyup(function () {
        const $park = $("#search-park").val().toLowerCase()
        $('.main-contents').each(function () {
            const val = $(this).text();
            if (val.toLowerCase().includes($park)) {
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
