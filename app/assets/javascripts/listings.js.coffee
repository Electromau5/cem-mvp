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
	  path: '/public/assets/'
	  starOn: 'blue-star copy-9714dd3ef06c6544d1f0f4fc6f81ee07b6fed2e6c51709e7cc7fb970a7b949c8.png'
	  starOff: 'white-star copy.png'
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

