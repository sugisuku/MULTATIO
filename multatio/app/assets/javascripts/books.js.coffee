# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#new_search_form').on 'ajax:success', (e, books)->
    $('tr.book').hide()
    ids = (books.map (b) -> "#book_#{b.id}").join(',')
    $(ids).show()

###
  setTimeout()->
    $('#notice').fadeOut('slow')
    , 800

  $('a[data-method="delete"]').live('ajax:success', (e, data, status, xhr)->
    $('#post_'+data.post.id).fadeOut("slow")
###
