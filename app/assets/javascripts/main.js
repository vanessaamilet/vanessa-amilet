$(window).load(function() {
    $("#status").delay(2e3).fadeOut("slow"),
    $("#preloader").delay(1600).fadeOut("slow")
}),
$(window).scroll(function() {
    $(this).scrollTop() > 50 ? $(".before-color").addClass("after-color") : $(".before-color").removeClass("after-color")
});
