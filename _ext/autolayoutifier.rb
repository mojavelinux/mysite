module Awestruct::Extensions
  class AutoLayoutifier
    def execute(site)
      site.posts.map {|post| post.layout = 'post' if not post.layout }
    end
  end
end
