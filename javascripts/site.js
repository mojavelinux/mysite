(function() {

  $(function() {
    $('*[rel=tooltip]').tooltip({
      placement: 'right'
    });
    return $('h2.title a').hover((function() {
      return $(this).css({
        fontStyle: 'italic'
      });
    }), (function() {
      return $(this).css({
        fontStyle: 'normal'
      });
    }));
  });

  this.fetchNews = function(url, loc, num) {
    if (num == null) {
      num = 10;
    }
    return $.jGFeed(url, (function(feeds) {
      return $.each(feeds.entries, function(idx, entry) {
        return $(loc).append("<li><a href=\"" + entry.link + "\">" + entry.title + "</li>");
      });
    }), num);
  };

}).call(this);
