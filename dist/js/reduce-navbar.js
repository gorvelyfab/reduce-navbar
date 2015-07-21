(function($) {
  'use strict';
  var $body, $reduceMenuStandard;
  $reduceMenuStandard = $('#reduce__menu--standard');
  $body = $('body');
  $('#active-menu-standard').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    return $reduceMenuStandard.toggleClass('is-visible');
  });
  $('#reduce--left').on('click', function(e) {
    e.preventDefault();
    return $body.toggleClass('with-reduce-sidebar--left');
  });
  $('#reduce--right').on('click', function(e) {
    e.preventDefault();
    return $body.toggleClass('with-reduce-sidebar--right');
  });
  $('#reduce__cache').on('click', function() {
    return $body.removeClass('with-reduce-sidebar--left').removeClass('with-reduce-sidebar--right');
  });
  $body.on('click', function(e) {
    return $reduceMenuStandard.removeClass('is-visible');
  });
  return $reduceMenuStandard.on('click', function(e) {
    return e.stopPropagation();
  });
})(window.jQuery);

//# sourceMappingURL=../../src/js/maps/reduce-navbar.js.map
