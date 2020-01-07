(function() {
	
	
	
	var wookmark;
	$('.wookmark').each(function(i, obj) {
		
		imagesLoaded(obj, function() {
			
			function comparatorIsTopNews(a, b) {
				var $a = $(a), $b = $(b);
				// Check if tile should be the first one
				if (!$a.hasClass('topnews') && $b.hasClass('topnews'))
					return 1;
				
				return -1;
			}
			
			
			function getWindowWidth() {
				return Math.max(document.documentElement.clientWidth, window.innerWidth || 0)
			}
	
	
    		
			wookmark = new Wookmark(obj, {
				align: 'left',
				//comparator: comparatorIsTopNews, // avoid: leads to misleading prev/next in news detailview
				comparator: null,
			    itemWidth: 294,
			    outerOffset: 0,
			    offset: 8,
			    flexibleWidth: function () {
			        return getWindowWidth() < 1024 ? '100%' : '50%';
			    }
			});
		});
	});
	
	
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

	// 	Make placeholder text (input) in forms functional
	$("input").each(function(){
        if($(this).attr('required') == 'required'){
            var req = $(this).attr('placeholder') + ' *';
            $(this).attr('placeholder', req);
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



	
	