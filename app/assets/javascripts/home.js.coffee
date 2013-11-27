$ ->
  $('#sendJoin').on 'click', (e) ->
    e.preventDefault()
    $('#joinModal').foundation('reveal', 'close')
    # alert = $('<div data-alert data-options="animation_speed:500;" class="custom-alert-box">' +
    #   'OI!</div>')
    # $('body').append(alert)


# $ ->
#   $(window).on 'resize', ->
#     @stretch_content()

# @stretch_content = ->
#   $('#main_map').height $(window).innerHeight() - $('#main_map').height
