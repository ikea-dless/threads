# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  post_list = $('.post-list')
  $('.more').click ->
    $.ajax
      type: 'GET'
      url: '/posts/get_more'
      dataType: 'JSON'
      success: (data) ->
        for post in data
          post_list.append("<li>#{ post.name }")
          post_list.append("<li>#{ post.email }")
          post_list.append("<li>#{ post.comment }")
