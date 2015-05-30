$(document).on("page:load", function(){
    if (Modernizr.mq('(min-width: 584px)')) {
        showAlbumInfo();
    }
    $(".button--prev").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().prev().show();
        $(this).parent().parent().parent().prev().children('.info--text').addClass('show');
    });

    $(".button--next").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().next().show();
        $(this).parent().parent().parent().next().children('.info--text').addClass('show');
    });
    
    $("#notice").css("top", "-100%");
    
    $(".info--check").click(function(){
        $(this).parent().parent().siblings('.info--form').show();
    });
    
    $(".form--close").click(function(){
        $(this).parent().hide();
    })
    
    $(".flash--close").click(function(){
        $(".body--flash").hide();
    })
    
    $(".donate--close").click(function(){
        $(".body--donate").hide();
    })
    
    $(".about--close").click(function(){
        $(".body--about").hide();
    })
    
    $(".about-button").click(function() {
        $(".body--about").show();
    });
    
    $(".donate-button").click(function() {
        $(".body--donate").show();
    });
});

$(document).ready(function(){
    if (Modernizr.mq('(min-width: 584px)')) {
        showAlbumInfo();
    }
    $(".button--prev").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().prev().show();
        $('.info--text').removeClass('show');
        $(this).parent().parent().parent().prev().children('.info--text').addClass('show');
    });

    $(".button--next").click(function(){
        $(this).parent().parent().parent().hide();
        $(this).parent().parent().parent().next().show();
        $('.info--text').removeClass('show');
        $(this).parent().parent().parent().next().children('.info--text').addClass('show');
    });
    
    $("#notice").css("top", "-100%");
    
    $(".info--check").click(function(){
        $(this).parent().parent().siblings('.info--form').show();
    });
    
    $(".form--close").click(function(){
        $(this).parent().hide();
    })
    
    $(".flash--close").click(function(){
        $(".body--flash").hide();
    })
    
    $(".donate--close").click(function(){
        $(".body--donate").hide();
    })
    
    $(".about--close").click(function(){
        $(".body--about").hide();
    })
    
    $(".about-button").click(function() {
        $(".body--about").show();
    });
    
    $(".donate-button").click(function() {
        $(".body--donate").show();
    });
});

$('.body--next').on("click", function(){
    $(this).addClass("next");
});

$('.body--prev').on("click", function(){
    $(this).addClass("prev");
});

function showAlbumInfo() {
    $(".albums--album.moving-album").on("click", toggleAlbumInfo);

    var showingAlbumInfo = false;

    function toggleAlbumInfo(e) {
        e.preventDefault();
        if (showingAlbumInfo === false) {
            $(this).children(".album--close").fadeIn();
            if (Modernizr.mq('(min-width: 584px)')) {
                link = $(this).children(".album--link").attr('href');
                $(this).addClass("top");
                if ($(this).index() === 0) {
                    $(this).siblings(".albums--album").first().addClass("move-once");
                    $(this).siblings(".albums--album").last().addClass("move-twice");
                    $(this).fadeIn(500);
                    $(this).next().addClass("show");
                } else if ($(this).index() === 2) {
                    $(this).addClass("move-once");
                    $(this).siblings(".albums--album").last().addClass("move-twice");
                    $(this).siblings(".albums--album").first().fadeIn(500);
                    $(this).next().addClass("show");
                } else {
                    $(this).addClass("move-twice");
                    $(this).siblings(".albums--album").last().addClass("move-once");
                    $(this).fadeIn(500);
                    $(this).next().addClass("show");
                }
                $(".body--round").on("click", toggleAlbumInfo);
                $(".body--round").css("cursor", "pointer");
                $(this).addClass("hide");
                showingAlbumInfo = true;
            } else {
                
                showingAlbumInfo = true;
            }
        } else {
            $(this).children(".album--close").fadeOut();
            if (Modernizr.mq('(min-width: 584px)')) {
                link = $(this).children(".album--link").attr('href');
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