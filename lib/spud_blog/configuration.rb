module Spud
  module Blog
    include ActiveSupport::Configurable
    config_accessor :base_layout, :news_layout, :blog_enabled, :news_enabled, :posts_per_page, :blog_path, :news_path
    self.base_layout = 'application'
    self.news_layout = nil
    self.news_enabled = false
    self.blog_enabled = true
    self.posts_per_page = 5
    self.blog_path = 'blog'
    self.news_path = 'news'
  end
end
