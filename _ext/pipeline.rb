require 'draftexcluder'
require 'autolayoutifier'
require 'urlqualifier'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::DraftExcluder.new
  extension Awestruct::Extensions::Posts.new('/blog') 
  extension Awestruct::Extensions::AutoLayoutifier.new
  extension Awestruct::Extensions::Paginator.new(:posts, '/index', :per_page => 2)
  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::UrlQualifier.new
  extension Awestruct::Extensions::Atomizer.new(:posts, '/feed.atom.xml')

  helper Awestruct::Extensions::GoogleAnalytics
end

