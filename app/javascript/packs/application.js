require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")
require('jquery')


document.addEventListener('turbolinks:load', () => {
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
})
