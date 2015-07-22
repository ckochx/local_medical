# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = 'http://stds.medical-dental-pros.com'
SitemapGenerator::Sitemap.create do
  # add '/city', :changefreq => 'daily', :priority => 0.9
  # add '/state', :changefreq => 'daily', :priority => 0.9
  CityZipCode.find_each do |content|
    add city_zip_code_path(content.slug), lastmod: DateTime.current
  end
  State.find_each do |content|
    add state_path(content.slug), lastmod: DateTime.current
  end




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
end
