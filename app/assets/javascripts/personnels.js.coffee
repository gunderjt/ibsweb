# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->

  # img_source = "<%= defined?(@personnel) && @personnel.avatar.exists? ? @personnel.avatar.url(:medium) : image_url('default_user')  %>"
  $('#rootwizard').bootstrapWizard();
  # $(".personnel_image").fileinput initialPreview: ["<img src='<%= image_url('default_user.jpg')%>' class=\'file-preview-image\' alt=\'Avatar\' title=\'Avatar\'>"]
  

$(document).ready(ready)
$(document).on('page:load', ready)