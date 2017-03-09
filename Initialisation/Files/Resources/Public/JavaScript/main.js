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
	
	