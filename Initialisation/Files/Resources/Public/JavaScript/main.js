(function() {

	
	const $grid = $('.grid').prepend('<div class="grid-sizer"></div>');

	$grid.isotope({
    	
		itemSelector: '.grid-item',
		percentPosition: true,

		masonry: {
    		columnWidth: '.grid-sizer',
			gutter: 8
		}
	});


	document.addEventListener('lazyloaded', function(e){ $grid.isotope('layout'); });
    $grid.imagesLoaded().progress( function() { $grid.isotope('layout'); });

		
	Modernizr.addTest('mix-blend-mode', function(){
	    return Modernizr.testProp('mixBlendMode');
	});

	Modernizr.addTest('calcviewportunits', function(){
	    let computedHeight, 
	        div = document.createElement('div');

	    div.style.height = 'calc(10vh + 10vw)';
	    document.body.appendChild(div);
	    computedHeight = window.getComputedStyle(div).height;
	    document.body.removeChild(div);

	    return computedHeight !== "0px";
	});
	

	showViewPortSize(false);
	
})();



$(window).ready(function(event) {

	$('#menu-icon').click(function () {
		
		$(this).toggleClass('active').find('.navicon').toggleClass('active')
		$('body').toggleClass('shownav');
	});
	
	function resizedw(){
		$('#menu-icon').removeClass('active');
		$('.navicon').removeClass('active');
		$('body').removeClass('shownav');
	}

	let doit;
	window.onresize = function(){
	  clearTimeout(doit);
	  doit = setTimeout(resizedw, 25);
	};
	
	
	$(window).scroll( function() {
	    let top = $(this).scrollTop();
	    if ( top > 50 ) {
		    $('body').addClass('scrolled');
		}
		else {
			$('body').removeClass('scrolled');
		}
	});	
	

	// 	only if a description has been found
	$('.grid-item').filter(function () {
			return $(this).find('.description').length == 1
		}).on({
			mouseover: function () {
			$(this).addClass('hovered');
			$(this).siblings().removeClass('hovered');
		},
			mouseout: function () {
			$(".grid-item").removeClass('hovered');
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
            const req = $(this).attr('placeholder') + ' *';
            $(this).attr('placeholder', req);
        }
    });


});








// -----------
// Debugger that shows view port size. Helps when making responsive designs.
// -----------

function showViewPortSize(display) {
	if (display) {
		let height = window.innerHeight;
		let width = window.innerWidth;
		$('body').prepend('<div id="viewportsize" style="z-index:9999;position:fixed;bottom:0px;left:0px;color:#fff;background:#000;padding:10px">Height: ' + height + '<br>Width: ' + width + '</div>');
		$(window).resize(function() {
			height = window.innerHeight;
			width = window.innerWidth;
			$('#viewportsize').html('Height: ' + height + '<br>Width: ' + width);
		});
	}
}



	
	