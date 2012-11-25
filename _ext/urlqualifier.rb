module Awestruct::Extensions
  class UrlQualifier

    def execute(site)
      site.pages.each do |page|
        set_qualified_url(page, site.base_url)
      end
    end

    def set_qualified_url(page, base_url)
      page_path = page.output_path
      page.qurl = base_url
      if (page_path =~ /^\//)
        page.qurl += page_path
      else
        page.qurl += "/#{page_path}"
      end
      if (page.qurl =~ /^(.*\/)index.html$/)
        page.qurl = $1
      end
    end

  end
end
