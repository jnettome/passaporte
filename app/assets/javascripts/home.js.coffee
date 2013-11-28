$ ->
  $('#sendJoin').on 'click', (e) ->
    e.preventDefault()
    $('#joinModal').foundation('reveal', 'close')

  $(window).on 'resize', ->
    $('#main_map').height parseInt($(window).innerHeight()) - 40 + 'px'

  L.marker([51.5, -0.09]).addTo(map)
    .bindPopup('A pretty CSS3 popup. <br> Easily customizable.')

  $('#main_map').height parseInt($(window).innerHeight()) - 40 + 'px'
