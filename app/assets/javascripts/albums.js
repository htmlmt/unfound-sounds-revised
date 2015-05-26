$(document).on("page:load", function(){
    if (Modernizr.mq('(min-width: 584px)')) {
        showAlbumInfo();
    }
    $(".text--prev").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().prev().css("display", "flex");
    });

    $(".text--next").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().next().css("display", "flex");
    });
});

$(document).ready(function(){
    if (Modernizr.mq('(min-width: 584px)')) {
        showAlbumInfo();
    }
    $(".text--prev").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().prev().css("display", "flex");
    });

    $(".text--next").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().next().css("display", "flex");
    });
});

$(document).on('click', '.header--logo a[data-remote=true]', function(e) {
    history.pushState({}, '', $(this).attr('href'));
});

$(document).on('click', '.header--title a[data-remote=true]', function(e) {
    history.pushState({}, '', $(this).attr('href'));
});

$(document).on('click', '.body--prev a[data-remote=true]', function(e) {
    history.pushState({}, '', $(this).attr('href'));
});

$(document).on('click', '.body--next a[data-remote=true]', function(e) {
    history.pushState({}, '', $(this).attr('href'));
});

$(window).on('popstate', function () {
    $.get(document.location.href)
});

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
            link = $(this).children(".album--link").attr('href');
            roundLink = window.location.href;
            history.pushState(null, $(this).children(".album--slug"), link);
            $(this).addClass("top");
            if ($(this).index() === 0) {
                $(this).siblings().first().addClass('move-once');
                $(this).siblings().last().addClass('move-twice');
                $(this).fadeIn(500);
            } else if ($(this).index() === 1) {
                $(this).addClass('move-once');
                $(this).siblings().last().addClass('move-twice');
                $(this).siblings().first().fadeIn(500);
            } else {
                $(this).addClass('move-twice');
                $(this).siblings().last().addClass('move-once');
                $(this).fadeIn(500);
            }
            $(".body--round").on("click", toggleAlbumInfo);
            $(".body--round").css("cursor", "pointer");

            showingAlbumInfo = true;
        } else {
            link = $(this).children(".album--link").attr('href');
            history.pushState(null, "", roundLink);
            $(".album--content").fadeOut(500);
            $(".albums--album").removeClass("move-once");
            $(".albums--album").removeClass("move-twice");
            $(".albums--album").removeClass("top");
            $(".body--round").off("click", toggleAlbumInfo);
            $(".body--round").css("cursor", "text");

            showingAlbumInfo = false;
        }
    }
}