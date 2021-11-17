# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.vanessaamilet.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  add '/about', :changefreq => 'monthly'
  add '/portfolio', :changefreq => 'weekly'
  add '/services'
  add '/privacy-policy'
  add '/terms'
  add '/faqs'
  add '/links'
  add '/portfolio/apg'
  add '/portfolio/igco'
  add '/portfolio/universal-control-systems'
  add '/portfolio/neydi-photography'
  add '/portfolio/the-picnic-hour'
  add '/portfolio/not-your-average-picnic'
  add '/portfolio/picnics-in-the-city'
  add '/portfolio/hcss'
  add '/portfolio/cameron-lee'
  add '/portfolio/reliant-home-security'
  add '/portfolio/reliant-mass-campaign'
  add '/portfolio/joshespin'
  add '/portfolio/jumpix'
  add '/portfolio/ibuildamerica'
  add '/portfolio/cia'
  add '/portfolio/turner-mining-group'
  add '/portfolio/captivecolour'
  add '/portfolio/artofgreenwood'
  add '/portfolio/snapple-video'
  add '/contact', :changefreq => 'weekly'

end
