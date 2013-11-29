$ ->
  $('#sendJoin').on 'click', (e) ->
    $('#joinModal').foundation('reveal', 'close')

  $(window).on 'resize', ->
    $('#main_map').height parseInt($(window).innerHeight()) - 40 + 'px'

  $.get '/profiles.json', (data) ->
    for profile in data
      do (profile) ->
        if profile.latitude && profile.longitude
          L.marker([profile.latitude, profile.longitude]).addTo(map)

  $('#main_map').height parseInt($(window).innerHeight()) - 40 + 'px'
