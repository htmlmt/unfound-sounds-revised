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

function showAlbumInfo() {
    if (Modernizr.mq('(min-width: 584px)')) {
        $(".albums--album").on("click", toggleAlbumInfo);
    }
    
    var showingAlbumInfo = false;
    var round = $(".body--round h3").text();
    
    function toggleAlbumInfo() {
        if (showingAlbumInfo === false) {
            $(this).addClass("top");
            if ($(this).index() === 0) {
                $(".albums--album:nth-of-type(2)").addClass('move-once');
                $(".albums--album:nth-of-type(3)").addClass('move-twice');
                $(".album--content:nth-of-type(1)").fadeIn(500);
            } else if ($(this).index() === 1) {
                $(this).addClass('move-once');
                $(".albums--album:nth-of-type(3)").addClass('move-twice');
                $(".album--content:nth-of-type(2)").fadeIn(500);
            } else {
                $(".albums--album:nth-of-type(3)").addClass('move-twice');
                $(".albums--album:nth-of-type(2)").addClass('move-once');
                $(".album--content:nth-of-type(3)").fadeIn(500);
            }
            $(".body--round h3").text("see all records");
            $(".body--round").on("click", toggleAlbumInfo);
            $(".body--round").css("cursor", "pointer");
            
            $(".body--next").fadeOut(500);
            $(".body--prev").fadeOut(500);
            
            showingAlbumInfo = true;
        } else {
            $(".album--content").fadeOut(500);
            $(".albums--album").removeClass("move-once");
            $(".albums--album").removeClass("move-twice");
            $(".albums--album").removeClass("top");
            $(".body--round h3").text(round);
            $(".body--round").off("click", toggleAlbumInfo);
            $(".body--round").css("cursor", "text");
            
            $(".body--next").fadeIn(500);
            $(".body--prev").fadeIn(500);
            
            showingAlbumInfo = false;
        }
    }
}