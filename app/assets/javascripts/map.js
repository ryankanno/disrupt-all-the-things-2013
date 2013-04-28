var map;
var infoWindow;

function initialize() {
  var mapOptions = {
    zoom: 14,
    center: new google.maps.LatLng(40.75313997843634, -73.99394511380184),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  infowindow = new google.maps.InfoWindow({content: "loading..."});
  displayPosition();
}

google.maps.event.addDomListener(window, 'load', initialize);

function displayPosition()
{
  var latitude = 40.76;
  var longitude = -74.00;

  $.getJSON('/items/?latitude=' + latitude + '&longitude=' + longitude, function(data) {
    var items = [];
   
    $.each(data.items, function(index, value) {
      items.push('<li><img src="' + value['photo_url'] + '"/>'+ value['heading'] + '</li>');
      var myLatlng = new google.maps.LatLng(value['latitude'],value['longitude']);
      var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title:value['heading']
      });
      google.maps.event.addListener(marker, "click", function () {
          var myTemplate = '<h1>'+value['heading']+'<h1><p><img src="' + value['photo_url'] + '"/></p>';
          infowindow.setContent(myTemplate);
          infowindow.open(map, this);
      });
    });
   
    $('<ul/>', {
      'class': 'my-new-list',
      html: items.join('')
    }).appendTo('body');

    google.maps.event.trigger(map, 'resize'); 
  });
}

function displayError(error) {
  var errors = { 
    1: 'Permission denied',
    2: 'Position unavailable',
    3: 'Request timeout'
  };
  alert("Error: " + errors[error.code]);
}

$(document).ready(function() {
});
