$(document).ready(function () {
    var toogleOpen = $('#header .header-inner .top-menu');
    $('#header .header-inner .toggle').hover(function () {
        toogleOpen.toggleClass('open');
        $('.nav-thumbnail').slideDown('fast');
    }, function () {
        toogleOpen.toggleClass('open');
        $('.nav-thumbnail').slideUp('fast');
    });
});