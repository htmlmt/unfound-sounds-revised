$(document).on("page:load", function(){
    if (Modernizr.mq('(min-width: 584px)')) {
        showAlbumInfo();
    }
    $(".button--prev").click(function(){
        $(this).parent().parent().parent().fadeOut();
        $(this).parent().parent().parent().prev().fadeIn();
        console.log($(this).parent().parent().parent().prev().children('.info--text'));
        $(this).parent().parent().parent().prev().children('.info--text').addClass('show');
    });

    $(".button--next").click(function(){
        $(this).parent().parent().parent().fadeOut();
        $(this).parent().parent().parent().next().fadeIn();
        $(this).parent().parent().parent().next().children('.info--text').addClass('show');
    });
});

$(document).ready(function(){
    if (Modernizr.mq('(min-width: 584px)')) {
        showAlbumInfo();
    }
    $(".button--prev").click(function(){
        $(this).parent().parent().parent().fadeOut();
        $(this).parent().parent().parent().prev().fadeIn();
        $('.info--text').removeClass('show');
        $(this).parent().parent().parent().prev().children('.info--text').addClass('show');
    });

    $(".button--next").click(function(){
        $(this).parent().parent().parent().fadeOut();
        $(this).parent().parent().parent().next().fadeIn();
        $('.info--text').removeClass('show');
        $(this).parent().parent().parent().next().children('.info--text').addClass('show');
    });
});

// $(document).on('click', '.header--logo a[data-remote=true]', function(e) {
//     history.pushState({}, '', $(this).attr('href'));
// });
//
// $(document).on('click', '.header--title a[data-remote=true]', function(e) {
//     history.pushState({}, '', $(this).attr('href'));
// });
//
// $(document).on('click', '.body--prev a[data-remote=true]', function(e) {
//     history.pushState({}, '', $(this).attr('href'));
// });
//
// $(document).on('click', '.body--next a[data-remote=true]', function(e) {
//     history.pushState({}, '', $(this).attr('href'));
// });
//
// $(window).on('popstate', function () {
//     $.get(document.location.href)
// });

$('.body--next').on("click", function(){
    $(this).addClass("next");
});

$('.body--prev').on("click", function(){
    $(this).addClass("prev");
});

function showAlbumInfo() {
    if (Modernizr.mq('(min-width: 584px)')) {
        $(".albums--album.moving-album").on("click", toggleAlbumInfo);
    }

    $(window).bind("popstate", function() {
        toggleAlbumInfo();
    });

    var showingAlbumInfo = false;
    var roundLink;

    function toggleAlbumInfo(e) {
        e.preventDefault();
        if (showingAlbumInfo === false) {
            if (Modernizr.mq('(min-width: 584px)')) {
                link = $(this).children(".album--link").attr('href');
                roundLink = window.location.href;
                $(this).addClass("top");
                // history.pushState(null, $(this).children(".album--slug"), link);
                if ($(this).index() === 0) {
                    $(this).siblings(".albums--album").first().addClass("move-once");
                    $(this).siblings(".albums--album").last().addClass("move-twice");
                    $(this).fadeIn(500);
                    $(this).siblings(".albums--info").first().addClass("show");
                } else if ($(this).index() === 1) {
                    $(this).addClass("move-once");
                    $(this).siblings(".albums--album").last().addClass("move-twice");
                    $(this).siblings(".albums--album").first().fadeIn(500);
                    $(this).siblings(".albums--info").first().next().addClass("show");
                } else {
                    $(this).addClass("move-twice");
                    $(this).siblings(".albums--album").last().addClass("move-once");
                    $(this).fadeIn(500);
                    $(this).siblings(".albums--info").last().addClass("show");
                }
                $(".body--round").on("click", toggleAlbumInfo);
                $(".body--round").css("cursor", "pointer");
                $(this).addClass("hide");
                showingAlbumInfo = true;
            } else {
                
            }
        } else {
            if (Modernizr.mq('(min-width: 584px)')) {
                link = $(this).children(".album--link").attr('href');
                // history.pushState(null, "", roundLink);
                $(".albums--info").removeClass('show');
                $(".albums--album").removeClass("move-once");
                $(".albums--album").removeClass("move-twice");
                $(".albums--album").removeClass("top");
                $(this).removeClass("hide");
                showingAlbumInfo = false;
            }
        }
    }
}