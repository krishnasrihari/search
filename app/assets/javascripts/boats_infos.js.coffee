# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.search_filter = ->
  $this = $(this)  
  $this.on 'click', (event)->
    id = $this.attr('id')
    console.log id
    console.log $('.dropdown-toggle').html() 
    $('.dropdown-toggle').html(id)
  
onBoatsReady = ->
  $('.toggle-menu').search_filter()
  
window.onload = ->      
  jQuery ->
    onBoatsReady()  
  