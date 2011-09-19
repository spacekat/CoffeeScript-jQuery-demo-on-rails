# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("a.favorite-manual").click (e) ->
    selectedLink = ($ this)
    e.preventDefault()
    $.ajax {
      type: "PUT"
      dataType: 'json'
      url: $(this).attr('href')
      success: (res) ->
        # console.log(res)
        selectedLink
          .toggleClass("fave whatevs")
    }
    false

  $("a").bind 'ajax:success', ->
    $(this).toggleClass("fave whatevs")
    
  