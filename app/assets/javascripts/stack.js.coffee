# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready -> $('#top').hover(
                  () -> $("#stack tr:first-child td.mark").html("POP")
                  () -> $("#stack tr:first-child td.mark").html("&nbsp;&nbsp;&nbsp;"));