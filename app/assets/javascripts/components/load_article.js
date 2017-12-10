var header_textbox = $('section:not(#article-new) #article-header h1');


function fnMove(el) {
    location.href = $(el).data('href');
}

function soundToggle() {
    var toggler_icon = $('#soundTrigger .tm-icon');
    var sound_on = localStorage.getItem('voyage_sound');
    if (sound_on === 'on'){
        localStorage.setItem('voyage_sound', 'off');
        $('video').prop('muted', 'off');
        toggler_icon
            .removeClass('zmdi-notifications-off')
            .addClass('zmdi-notifications');
    } else {
        localStorage.setItem('voyage_sound', 'on');
        $('video').prop('muted', 'on');
        toggler_icon
            .removeClass('zmdi-notifications')
            .addClass('zmdi-notifications-off');
    }
}


/*
* on Ready
* */
$(document).ready(function () {
    var height = $(window).height();
    var width = $(window).width();
    var width2 = window.screen.width;
    $('#article-header .full_vod').css('height', height).css('width', width2);
    $('#article-header').css('height', height).css('width', width);

    header_textbox.addClass('open');


    /*
    * Video default sound
    * */
    var toggler_icon = $('#soundTrigger .tm-icon');
    var sound_on = localStorage.getItem('voyage_sound');
    if (sound_on){
        $('video').prop('muted', false);
        toggler_icon
            .removeClass('zmdi-notifications-off')
            .addClass('zmdi-notifications');
    } else {
        $('video').prop('muted', true);
        toggler_icon
            .removeClass('zmdi-notifications')
            .addClass('zmdi-notifications-off');
    }

    $('#soundTrigger').click(function(){soundToggle()});


    /*
    * sizing
    * */
    var right_size = -1 * $('#footer-section .next .paging-link').width() + 30;
    $('#icon_footer_arrow').attr('style', 'right: '+right_size+'px;');


    /*
    * Carousel sizing
    * */
    // img
    var carousel_imgs = $('.carousel .carousel-inner .item img');
    carousel_imgs.css('height', carousel_imgs.width() * 0.6);

    // indicators text
    var row_rect = $('.article-section .row')[0].getBoundingClientRect();
    var rect = $('.carousel-indicators')[0].getBoundingClientRect();
    var pos_r = -1.0 * ($(document).width() - rect.x - (rect.width-165) );

    var r = $(document).width() - $('.carousel-indicators li span')[0].getBoundingClientRect().x;
    console.log($(document).width());
    console.log($('.carousel-indicators li span')[0].getBoundingClientRect().x);
    console.log(r);
    $('.carousel-indicators li span').css('right', -1.0 * r - 300);
    // $('.carousel-indicators li span').css('left', pos_x);
});


/*
* Video control
* */
$(document).ready(function() {
    // Get media - with autoplay disabled (audio or video)
    var media = $('.scrollPlay');
    var tolerancePixelTop = $(window).height() * 0.3;
    var tolerancePixelBottom = $(window).height() * 0.58;

    function checkMedia(){
        // Get current browser top and bottom
        var scrollTop = $(window).scrollTop() + tolerancePixelTop;
        var scrollBottom = $(window).scrollTop() + $(window).height() - tolerancePixelBottom;
        var body = $('body');
        var blackout = false;

        media.each(function(index, el) {
            var yTopMedia = $(this).offset().top;
            var yBottomMedia = $(this).height() + yTopMedia;

            if(scrollTop < yBottomMedia && scrollBottom > yTopMedia){
                $(this).get(0).play();
                if ($.inArray('fade_out', $(this).attr('class').split(' ')) !== -1){
                    blackout = true;
                }
            } else {
                $(this).get(0).pause();
            }
        });

        blackout ? (body.addClass('bg-black')) : (body.removeClass('bg-black'))
    }
    $(document).on('scroll', checkMedia);
});



/*
* on Scroll
* */
$(document).scroll(function () {
    var height = $(window).height();
    var size = $(this).scrollTop();
    var top = (size/height) * $('#header').height() - 10;
    var opacity = size/height - 0.2;

    /*
    * Article header
    * */
    $('section:not(#article-new) .cover_bg').css('opacity', opacity);

    size = -1.0 * (size / 2.5);
    header_textbox.css('bottom', size);
    $('#article-header .vod_container').css('top', top).css('opacity', 1.5 - opacity);

});