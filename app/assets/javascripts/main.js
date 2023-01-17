/* ## Scripts - Turbolinks (Loaded through All Pages)
---------------------------------------------------------------------------------------------------- */

// $(document).on('turbolinks:load', function() {
document.addEventListener("turbolinks:load", function(){
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

    

    /* ## Navigation
    ---------------------------------------------------------------------------------------------------- */
    //* ### Nav Shrink */
	window.addEventListener('scroll', function(){
		var header = document.querySelector('nav.navbar');
		header.classList.toggle("nav-shrink", window.scrollY > 0);
	});

    /* ## Scroll to Top
    ---------------------------------------------------------------------------------------------------- */
    //Get the button
    let mybutton = document.querySelector('.to-top');

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
    scrollFunction();
    };

    function scrollFunction() {
    if (
        document.body.scrollTop > 20 ||
        document.documentElement.scrollTop > 20
    ) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
    }
    // When the user clicks on the button, scroll to the top of the document
    mybutton.addEventListener("click", backToTop);

    function backToTop() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }


    /* ## Bonsai Contact Form
    ---------------------------------------------------------------------------------------------------- */
    function iframeLoaded() {
        var iFrameID = document.getElementById('bonsai-form');
        if(iFrameID) {
              // here you can make the height, I delete it first, then I make it again
              iFrameID.height = "";
              iFrameID.height = iFrameID.contentWindow.document.body.scrollHeight + "px";
        }   
    }
    
    
    /* ## Load More Btn (For Portfolio)
    ---------------------------------------------------------------------------------------------------- */
	if (document.body.classList.contains('portfolio')) {
		let columnFour = document.querySelector('.col-md-4');
		const loadMoreBtn = document.getElementById('load-more');
		const cardHidden = [...document.querySelectorAll('.portfolio-grid .col-md-4.load-card')];
		// cardHidden.splice(0, 9).forEach(
		// 	elem => elem.classList.remove('load-card')
		// );
		loadMoreBtn.addEventListener('click', function(e){ // click event for load more
				e.preventDefault();

				// check if any hidden divs still exist
				cardHidden.splice(0, 9).forEach( 
					elem => elem.classList.remove('load-card')
				);
				if (cardHidden.length == 0) {
					loadMoreBtn.classList.add('hidden');
				}
		});
	}
	

    /* ## More Projects Section
    ---------------------------------------------------------------------------------------------------- */
    let elems = document.querySelectorAll(".browse-more .row.projects");
	// let elems = [...document.querySelectorAll('.browse-more .row.projects')];
    if (elems.length) {
        let keep = Math.floor(Math.random() * elems.length);
            for (let i = 0; i < elems.length; ++i) {
                if (i !== keep) {
                    // $(elems[i]).style.display = "none";
					elems[i].classList.add('hidden');
                }
            }
    }

     /* ## Fancybox
    ---------------------------------------------------------------------------------------------------- */
    // $.fancybox.defaults.hash = false;
    // $('[data-fancybox="gallery"]').fancybox({
    //     // Options will go here
    //     buttons : [ 
    //         'slideShow',
    //         // 'zoom',
    //         'fullScreen',
    //         'close'
    //     ],
    //     animationEffect: "fade",
    // });
});


/* ## Random
---------------------------------------------------------------------------------------------------- */
console.info("\nDesigned and Developed By Vanessa Amilet Santos")