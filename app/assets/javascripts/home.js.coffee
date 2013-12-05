$ ->
  $('#sendJoin').on 'click', (e) ->
    $('#joinModal').foundation('reveal', 'close')

  $(window).on 'resize', ->
    $('#main_map').height parseInt($(window).innerHeight()) - 40 + 'px'


  $('#main_map').height parseInt($(window).innerHeight()) - 40 + 'px'

  # Add custom popups to each using our custom feature properties
  map.markerLayer.on 'layeradd', (e) ->
    marker = e.layer
    feature = marker.feature

    # Create custom popup content
    popupContent = '<a target="_blank" class="popup" href="' + feature.properties.url + '">' +
                      '   <h2>' + feature.properties.city + '</h2>' +
                      '</a>'

    # http://leafletjs.com/reference.html#popup
    marker.bindPopup popupContent,
      closeButton: false
      minWidth: 320

  $.getJSON '/profiles.json', (data) ->
    # Add features to the map
    map.markerLayer.setGeoJSON(data)
