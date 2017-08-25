# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  #  $('#ticket_assignee_id').autocomplete
  #    source: $('#ticket_assignee_id').data('autocomplete-source')

  $("tr[data-link]").click ->
    window.location = $(this).data('link')

  $('tbody tr').hover (->
    $(this).css 'cursor', 'pointer'
    return
  ), ->
    $(this).css 'cursor', 'auto'
    return

  $('#comment_internal').change (e) ->
    if e.currentTarget.checked
      $('#comment_body').addClass 'alert alert-warning'
    else
      $('#comment_body').removeClass 'alert alert-warning'
    return
