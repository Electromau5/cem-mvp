// Zoom in on Image
$(function() {
  return $('.zoom').elevateZoom({
    gallery: 'gallery',
    zoomWindowPosition: 1,
    scrollZoom: true,
    responsive: true,
    borderSize: 1,
    cursor: 'pointer',
    galleryActiveClass: 'active',
    imageCrossfade: true
  });
});

// Rating System
$(function() {
  return $('.feature1').raty({
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});

$(function() {
  return $('.feature2').raty({
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});

$(function() {
  return $('.feature3').raty({
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});

$(function() {
  return $('.feature4').raty({
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});

$(function() {
  return $('.feature5').raty({
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});

// Masonry grid layout
$(function() {
  return $('#grid').imagesLoaded(function() {
    return $('#grid').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  });
});