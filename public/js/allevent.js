let oldcard = "";
let i = 0;
function play(card) {
    if (i == 0) {
        //document.getElementById("cardbody").style.display="block";
        $(card + " .card-body").css("opacity", "1");
        $(card + " .card-body").css("transform", "translateY(260px)");
        $(card).css("height", "400px");
        $(card+ " .fa-arrow-down").attr('class', 'fas fa-arrow-up');
        oldcard = card;
        i = 1;
    }
    else if (i == 1 && oldcard != card) {
        $(oldcard + " .card-body").css("opacity", "0");
        $(oldcard + " .card-body").css("transform", "translateY(0px)");
        $(oldcard).css("height", "230px");
        $(oldcard+ " .fa-arrow-up").attr('class', 'fas fa-arrow-down');
        $(card + " .card-body").css("opacity", "1");
        $(card + " .card-body").css("transform", "translateY(260px)");
        $(card).css("height", "400px");
        $(card+ " .fa-arrow-down").attr('class', 'fas fa-arrow-up');
        oldcard = card;
        i = 1;
    } else if (i == 1 && oldcard == card) {
        $(".card-body").css("opacity", "0");
        $(".card-body").css("transform", "translateY(0px)");
        $(".card").css("height", "230px");
        $(card+ " .fa-arrow-up").attr('class', 'fas fa-arrow-down');
        i = 0;
    }
}


