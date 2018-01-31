/* ## Preloader
---------------------------------------------------------------------------------------------------- */

$(window).load(function() {
	$("#status").delay(2e3).fadeOut("slow"),
	$("#preloader").delay(1600).fadeOut("slow")
}),
$(window).scroll(function() {
	$(this).scrollTop() > 50 ? $(".before-color").addClass("after-color") : $(".before-color").removeClass("after-color")
});

/* ## Smooth Scrolling
---------------------------------------------------------------------------------------------------- */

jQuery(document).ready(function($) {

	$('a[href^="#"]').click(function(event) {
		event.preventDefault(); 

		var defaultAnchorOffset = 0;
		
		var $anchor = $('#' + this.hash.substring(1));
				
		var anchorOffset = $anchor.data('anchor-offset');
		if (!anchorOffset) // for when anchor doesn't have the offset attribute like Section 4
			anchorOffset = defaultAnchorOffset; 

		$('html,body').animate({ 
			scrollTop: $anchor.offset().top - anchorOffset
		}, 700);        
	});
});
