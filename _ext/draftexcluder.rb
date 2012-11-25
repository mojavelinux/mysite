module Awestruct::Extensions
  class DraftExcluder

    def execute(site)
      site.pages.reject! {|page| page.output_path.end_with?('.html') && page.draft}
    end

  end
end
