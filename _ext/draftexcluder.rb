module Awestruct::Extensions
  class DraftExcluder

    def execute(site)
      site.pages.reject! {|page| page.draft}
    end

  end
end
