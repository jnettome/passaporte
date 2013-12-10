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
    popupContent = "<div class=\"large-12 columns preview\">" +
      "<div class=\"row\"><h6>#{feature.properties.city}, #{feature.properties.country}</h6></div>" +
      "<div class=\"row\">" +
        "<h4>#{feature.properties.name}</h4>" +
        "<h5>#{feature.properties.age} anos</h5>" +
      "</div>" +
      "<div class=\"row\">" +
        "<h5>#{feature.properties.course} - #{feature.properties.university}</h5>" +
      "</div>" +
      "<a href=\"#{feature.properties.url}\" class=\"button tiny secondary loadProfile\">ver o perfil completo</a>" +
    "</div>"

    # http://leafletjs.com/reference.html#popup
    marker.bindPopup popupContent,
      closeButton: true
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
