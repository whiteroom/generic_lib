$(function(){

	$('[data-fancybox]').fancybox({
        // Options will go here
        
        arrows: true, 
        animationEffect: false, 
        transitionEffect: "fade", 
        toolbar: true, 

        buttons: [
            "close",
            // "zoom",
        ],
        
        caption : function( instance, item ) {
            return "<p class='imagecaption'>" + $(this).attr('title') + "</p>";
        },
        
        clickOutside: "close",
        
        clickContent: function(current, event) {
        return current.type === "image" ? "zoom" : false;
        },
        
        
        

     });
    
    $.fancybox.defaults.btnTpl.arrowLeft = '<button data-fancybox-prev class="fancybox-button fancybox-button--arrow_left" title="{{PREV}}"><div>' + '<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path d="M2.117 12l7.527 6.235-.644.765-9-7.521 9-7.479.645.764-7.529 6.236h21.884v1h-21.883z"/></svg>' + '</div></button>';
    $.fancybox.defaults.btnTpl.arrowRight = '<button data-fancybox-next class="fancybox-button fancybox-button--arrow_right" title="{{NEXT}}"><div>' + '<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z"/></svg>' + '</div></button>';

});
	
	
	
	