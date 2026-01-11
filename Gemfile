source "https://rubygems.org"

# GitHub Pages gem bundles Jekyll + all supported plugins
gem "github-pages", group: :jekyll_plugins

# Additional plugins (must also be in _config.yml)
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
end

# Windows and JRuby compatibility
platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1", :platforms => [:windows]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

# webrick is no longer bundled with Ruby 3.0+
gem "webrick", "~> 1.8"
