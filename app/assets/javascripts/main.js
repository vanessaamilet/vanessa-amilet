/* ## Scripts - Turbolinks (Loaded through All Pages)
---------------------------------------------------------------------------------------------------- */

$(document).on('turbolinks:load', function() {
    /* ## Cookie Consent
    ---------------------------------------------------------------------------------------------------- */
    // window.cookieconsent.initialise({
    //     "palette": {
    //       "popup": {
    //         "background": "#f2f2f2",
    //         "text": "#444444"
    //       },
    //       "button": {
    //         "background": "#255958",
    //         "text": "#ffffff"
    //       }
    //     },
    //     "showLink": false,
    //     "theme": "classic"
    // });

    

    /* ## Navigation - Nav Shrink
    ---------------------------------------------------------------------------------------------------- */
    //* ### Mobile Nav */
    $('#navbarNav').on('show.bs.collapse', function() {
        // do something…
        $('.navbar').addClass('mobile');
    });

    // $('#navbarNav').on('hidden.bs.collapse', function() {
    //     // do something…
    //     $('.navbar').removeClass('mobile');
    // });

    //* ### Nav Shrink */
    $(window).scroll(function () {
        if ($(window).scrollTop() > 70) { 
            $('nav.navbar').addClass('nav-shrink');
            //$('.dark-nav nav.navbar').addClass('nav-shrink');
        }
        else{
            $('nav.navbar').removeClass('nav-shrink');
            //$('.dark-nav nav.navbar').removeClass('nav-shrink');
        }
    });
    /* ## Smooth Scrolling
    ---------------------------------------------------------------------------------------------------- */
    // $('a[href*="#info"]:not([href="#"])').click(function() {
    //     if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
    //         var target = $(this.hash);
    //         target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
    //         if (target.length) {
    //             $('html, body').animate({
    //                 scrollTop: target.offset().top
    //             }, 1000);
    //             return false;
    //         }
    //     }
    // });

    /* ## Scroll to Top
    ---------------------------------------------------------------------------------------------------- */
    // Scroll (in pixels) after which the "To Top" link is shown
	var offset = 300,
    //Scroll (in pixels) after which the "back to top" link opacity is reduced
    offset_opacity = 1200,
    //Duration of the top scrolling animation (in ms)
    scroll_top_duration = 100,
    //Get the "To Top" link
    $back_to_top = $('.to-top');

    //Visible or not "To Top" link
    $(window).scroll(function(){
        ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('top-is-visible') : $back_to_top.removeClass('top-is-visible top-fade-out');
        if( $(this).scrollTop() > offset_opacity ) { 
            $back_to_top.addClass('top-fade-out');
        }
    });

    //Smoothy scroll to top
    $back_to_top.on('click', function(event){
        event.preventDefault();
        $('body,html').animate({
            scrollTop: 0 ,
            }, scroll_top_duration
        );
    });
    
    /* ## Load More Btn (For Portfolio)
    ---------------------------------------------------------------------------------------------------- */
    //$(function(){
        $(".col-md-4").slice(0, 9).show(); // select the first twelve
        $("#loadMore").click(function(e){ // click event for load more
            e.preventDefault();
            $(".col-md-4.load-card:hidden").slice(0, 9).fadeIn(950).show(); // select next 10 hidden divs and show them
            if($(".col-md-4.load-card:hidden").length == 0){ // check if any hidden divs still exist
                $("#loadMore").fadeOut('slow');
                //alert("No more divs"); // alert if there are none left
            }
        });
    //});

    /* ## Fancybox
    ---------------------------------------------------------------------------------------------------- */
    // $('.fancybox').fancybox({});
    $.fancybox.defaults.hash = false;
    $('[data-fancybox="gallery"]').fancybox({
        // Options will go here
        buttons : [ 
            'slideShow',
            // 'zoom',
            'fullScreen',
            'close'
        ],
        animationEffect: "fade",
    });

    // $(".browse-more .col-md-4").each(function () {
    //     $(this).toggleClass('invisible d-none', Math.random() < 0.75);
    // });

    /* ## More Projects Section
    ---------------------------------------------------------------------------------------------------- */
    var elems = $(".browse-more .row.projects");
    if (elems.length) {
        var keep = Math.floor(Math.random() * elems.length);
            for (var i = 0; i < elems.length; ++i) {
                if (i !== keep) {
                    $(elems[i]).hide();
                }
            }
        }
    });

/* ## Detect Snooping Web Developers
---------------------------------------------------------------------------------------------------- */
var counter = 0,
    back = !1;

$(window).resize(function () {
    var e = $(window).width();
    if (counter == 3) {
        alert("Hey, stop messing around. It's responsive, I promise.")
        counter++
    } else if (!back && e < 450) back = !0;
    else if (back && e > 700) {
        back = !1;
        counter++
    }
});


/* ## Random
---------------------------------------------------------------------------------------------------- */
console.info("\nDesigned and Developed By Vanessa Amilet Santos")