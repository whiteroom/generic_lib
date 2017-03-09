$(function(){

	$('a.lightbox').attr('rel', 'lightbox').fancybox({
            wrapCSS    : 'fancybox-custom',
            closeClick : true,
            padding: 0,
			closeBtn: 0,
            openEffect : 'none',
            prevEffect : 'fade',
            nextEffect : 'fade',

            helpers : {
                title : {
                    type : 'over'
                },
                overlay : {
                    css : {
                        'background' : 'rgba(0,0,0,0.75)'
                    }
                }
            }
        });

});
	
	
	
	