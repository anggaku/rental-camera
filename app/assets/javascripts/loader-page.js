$(document).ready(function ($) {
    setTimeout(function () {
        $('body').addClass('loaded');
    }, 1000);
});

$(document).on("click", ".link-back-to-home", function () {
    setTimeout(function () {
        $('body').addClass('no-js');
        location.reload();
    }, 50);
});
