$(document).on("page:load", function(){
    showAlbumInfo();
});

$(document).ready(function(){
    showAlbumInfo();
});

function showAlbumInfo() {
    $(".albums--album").on("click", toggleAlbumInfo);
    
    var showingAlbumInfo = false;
    var round = $(".albums--round h3").text();
    
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
            $(".albums--round h3").text("see all records");
            $(".albums--round").on("click", toggleAlbumInfo);
            $(".albums--round").css("cursor", "pointer");
            
            showingAlbumInfo = true;
        } else {
            $(".album--content").fadeOut(500);
            $(".albums--album").removeClass("move-once");
            $(".albums--album").removeClass("move-twice");
            $(".albums--album").removeClass("top");
            $(".albums--round h3").text(round);
            $(".albums--round").off("click", toggleAlbumInfo);
            $(".albums--round").css("cursor", "text");
            
            showingAlbumInfo = false;
        }
    }
}