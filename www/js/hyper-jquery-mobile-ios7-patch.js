// Add status-bar padding for jQueryMobile on iOS7.
;(function(hyper)
{
	function addPaddingForIOS7StatusBar()
	{
		if (hyper.isIOS7())
		{
			//document.write('<div style="width:20px;height:20px;"></div>')
			$('.ui-header').css('margin-top', '20px')
			//$('.ui-content').css('margin-top', '20px')

			// Special fix for WordGame.
			$('#button-info').css('margin-top', '20px')
			$('#video-holder').css('margin-top', '20px')
		}
		else
		{
			// Special fix for WordGame.
			$('h2').css('margin-top', '0px')
		}
	}

	$(document).on('pageinit', function(event)
	{
		addPaddingForIOS7StatusBar()
	})
})(window.hyper);
