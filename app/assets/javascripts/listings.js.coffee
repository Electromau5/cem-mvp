$ ->
	$('.zoom').elevateZoom 
	 gallery: 'gallery'
	 zoomWindowPosition: 1
	 scrollZoom: true
	 responsive: true
	 borderSize: 1
	 cursor: 'pointer'
	 galleryActiveClass: 'active'
	 imageCrossfade: true

$ ->	 
	$('.feature1').raty
	  readOnly: true
	  score: ->
	    $(this).attr 'data-score'
$ ->	 
	$('.feature2').raty
	  readOnly: true
	  score: ->
	    $(this).attr 'data-score'
$ ->	 
	$('.feature3').raty
	  readOnly: true
	  score: ->
	    $(this).attr 'data-score'
$ ->	 
	$('.feature4').raty
	  readOnly: true
	  score: ->
	    $(this).attr 'data-score'
$ ->	 
	$('.feature5').raty
	  readOnly: true
	  score: ->
	    $(this).attr 'data-score'

