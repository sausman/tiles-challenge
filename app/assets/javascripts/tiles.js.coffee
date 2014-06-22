Tiles =

  # Handles click events for .tile elements
  handleClick: ->
    $tile = $(this)
    $tile.addClass 'click-sending'
    title = $tile.text()
    $.ajax
      type: 'POST'
      url: "/clicks"
      data:
        click:
          title: title
        throw_exception: $('.throw-exception').is(':checked')
      complete: Tiles.handleClickComplete.bind(this)
      success: Tiles.handleClickSuccess.bind(this)
      error: Tiles.handleClickError.bind(this)

  # When the AJAX request sent in handleClick is completed remove
  # the .click-sending class from the .tile that was clicked
  handleClickComplete: ->
    $(this).removeClass 'click-sending'

  # When the AJAX request sent in handleClick is successful
  # add the .click-success class to the .tile that was clicked
  # and if there are no .tile elements that have not been
  # successfully clicked replace .tiles with /clicks
  handleClickSuccess: ->
    $(this).addClass 'click-success'
    if $('.tile:not(.click-success)').length == 0
      $.ajax
        type: 'GET'
        url: '/clicks'
        success: (data, status, xhr) ->
          $('.tiles').replaceWith data

  # When the AJAX request sent in handleClick returns an error
  # add the .click-error class to the tile that was clicked
  handleClickError: ->
    $(this).addClass 'click-error'

# Cache document jQuery object
$document = $(document)

# Attach event handlers
$document.on 'click',
             '.tile:not(.click-sending):not(.click-success)',
             Tiles.handleClick
