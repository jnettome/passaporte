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
    popupContent = "<div class=\"small-12 columns preview\">" +
      "<p>#{feature.properties.city}, #{feature.properties.country}</p>" +
      "<p>#{feature.properties.name}<br/>" +
      "#{feature.properties.age} anos<br/>" +
      "#{feature.properties.course}<br/>" +
      "#{feature.properties.university}</p>" +
      "<a href=\"#{feature.properties.url}\" class=\"loadProfile\">ver o perfil completo</a>" +
    "</div>"

    # http://leafletjs.com/reference.html#popup
    marker.bindPopup popupContent,
      closeButton: false
      minWidth: 320

    marker.on 'popupopen', (popupEvent) ->
      $('.loadProfile').on 'click', (e) ->
        e.preventDefault()
        $.get $(@).attr('href'), (data) ->
          $('#profileModal').foundation('reveal', 'open')
          $('#profileModal').html(data)


  layer = L.mapbox.tileLayer('livia.map-zbsobfzo')
  layer.on 'ready', ->
    $.getJSON '/profiles.json', (data) ->
      # Add features to the map
      map.markerLayer.setGeoJSON(data)
