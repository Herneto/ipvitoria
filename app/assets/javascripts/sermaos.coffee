$(document).ready ->
  # when the load more link is clicked
  $('.show-more').click (e) ->
    # prevent the default click action
    e.preventDefault()
    # hide load more link
    #$('.show-more').hide()

    # get the last id and save it in a variable 'last-id'
    last_id = $('.s').last().attr('id')
    # make an ajax call passing along our last user id
    $.ajax
      type: 'GET'
      url: $(this).attr('href')
      data: id: last_id
      dataType: 'script'
      success: ->     
        # show our load more link
        #$('.show-more').show()
        return
    return
  return