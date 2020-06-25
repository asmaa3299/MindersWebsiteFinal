/* Description Sessions button */
i=0;
function toggleDetails(){  
      if(i == 0){
        $(".description-hidden-content").css("opacity" , "1");
        $(".description-hidden-content").css("transform" , "translateY(80px)");
        $(".description-content").css("height" , "350px");
        i=1;
      }
      else if(i==1){
        $(".description-hidden-content").css("opacity" , "0");
        $(".description-hidden-content").css("transform" , "translateY(0px)");
        $(".description-content").css("height" , "200px");
        i=0;
    }
  }

/* Speakers Slideshow*/
let speakersArray=["scard1","scard2","scard3","scard4","scard5","scard6","scard7","scard8","scard9"];
let j=2;
function speakerslide(){
    if(j<speakersArray.length-1){
        document.getElementById(speakersArray[j-2]).style.display="none";
        j=j+1;
        document.getElementById(speakersArray[j]).style.display="block";
    }else{
        j=2;
        document.getElementById(speakersArray[j]).style.display="block";
        document.getElementById(speakersArray[j-1]).style.display="block";
        document.getElementById(speakersArray[j-2]).style.display="block";
        document.getElementById(speakersArray[7]).style.display="none";
        document.getElementById(speakersArray[8]).style.display="none";
        document.getElementById(speakersArray[6]).style.display="none";
        document.getElementById(speakersArray[5]).style.display="none";
        document.getElementById(speakersArray[4]).style.display="none";
        document.getElementById(speakersArray[3]).style.display="none";
    }
    
}
var myvar=setInterval(speakerslide, 2000);

$(document).scroll(function() {
  if($(window).scrollTop() > 40){

   $("nav").css("background","white");
   $("nav").css("border-bottom","3px solid black");
   $(".nav-link").css("color","black");
   $(".navbar-brand").css("color","black");
   $(".up-btn").css("display","block");

  }else if($(window).scrollTop() < 40){

   $("nav").css("background","black");
   $(".nav-link").css("color","#FFB607");
   $(".navbar-brand").css("color","white");
   $(".up-btn").css("display","none");
  }
});