$ ->
  $('*[rel=tooltip]').tooltip placement: 'right'
  $('h2.title a').hover (-> $(@).css fontStyle: 'italic'), (-> $(@).css fontStyle: 'normal')

this.fetchNews = (url, num, loc) ->
  $.jGFeed url, ((feeds) -> $.each(feeds.entries, (idx, entry) -> $(loc).append """<li><a href="\#{entry.link}">\#{entry.title}</li>""")), num
