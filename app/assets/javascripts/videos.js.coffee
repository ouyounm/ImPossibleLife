# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
getUrlVars = (url) ->
  vars = {}
  hashes = url.slice(url.indexOf('?') + 1).split('&')
  for h in hashes
    hash = h.split('=')
    vars[hash[0]] = hash[1]
  vars

# console.debug getUrlVars('https://www.youtube.com/watch?v=Svz16O92sPs')

$ ->
  $("#video_url").focusout ->
    url = $(this).val()
    video_code = getUrlVars(url)["v"]
    $("#video_video_code").val(video_code)
    embed_code = '<iframe width="560" height="315" src="//www.youtube.com/embed/#{video_code}" frameborder="0" allowfullscreen></iframe>'

