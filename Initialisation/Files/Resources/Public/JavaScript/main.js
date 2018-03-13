(function() {
	
	
	function getWindowWidth() {
		return Math.max(document.documentElement.clientWidth, window.innerWidth || 0)
	}
	
	var wookmark;
	// 	only if .wookmark is found
	if($('.wookmark').length == 1) {
		
		imagesLoaded('.wookmark', function() {
			wookmark = new Wookmark('.wookmark', {
				align: 'left',
			    itemWidth: 294,
			    outerOffset: 0,
			    offset: 8,
			    flexibleWidth: function () {
			        return getWindowWidth() < 1024 ? '100%' : '50%';
			    }
			});
		});
		
	}
	
	
	//showViewPortSize(true);
	
	
	
	
	
})();



$(window).ready(function(event) {

	$('#menu-toggle').on('click',function(){
		$('body').toggleClass('shownav');
	});
	
	
	$(window).scroll( function() {
	    var top = $(this).scrollTop();
	    if ( top > 50 ) {
		    $('body').addClass('scrolled');
		}
		else {
			$('body').removeClass('scrolled');
		}
	});	
	

	// 	only if a description has been found
	$('.project-item').filter(function () {
			return $(this).find('.description').length == 1
		}).on({
			mouseover: function () {
			$(this).addClass('hovered');
			$(this).siblings().removeClass('hovered');
		},
			mouseout: function () {
			$(".project-item").removeClass('hovered');
		}
	});
	
	
	// 	only if a description has been found
	$('.news article').filter(function () {
			return $(this).find('.description').length == 1
		}).on({
			mouseover: function () {
			$(this).addClass('hovered');
			$(this).siblings().removeClass('hovered');
		},
			mouseout: function () {
			$(".news article").removeClass('hovered');
		}
	});


});






Modernizr.addTest('mix-blend-mode', function(){
    return Modernizr.testProp('mixBlendMode');
});


Modernizr.addTest('calcviewportunits', function(){
    var computedHeight, 
        div = document.createElement('div');

    div.style.height = 'calc(10vh + 10vw)';
    document.body.appendChild(div);
    computedHeight = window.getComputedStyle(div).height;
    document.body.removeChild(div);

    return computedHeight !== "0px";
});





// -----------
// Debugger that shows view port size. Helps when making responsive designs.
// -----------

function showViewPortSize(display) {
	if (display) {
		var height = window.innerHeight;
		var width = window.innerWidth;
		jQuery('body').prepend('<div id="viewportsize" style="z-index:9999;position:fixed;bottom:0px;left:0px;color:#fff;background:#000;padding:10px">Height: ' + height + '<br>Width: ' + width + '</div>');
		jQuery(window).resize(function() {
			height = window.innerHeight;
			width = window.innerWidth;
			jQuery('#viewportsize').html('Height: ' + height + '<br>Width: ' + width);
		});
	}
}



	
	