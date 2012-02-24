# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spud_blog"
  s.version = "0.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Greg Woods"]
  s.date = "2012-02-24"
  s.email = "greg@westlakedesign.com"
  s.files = [
    "app/assets/images/spud/admin/news_thumb.png",
    "app/assets/images/spud/admin/posts_thumb.png",
    "app/assets/javascripts/spud/admin/news_posts.js",
    "app/assets/javascripts/spud/admin/post_categories.js",
    "app/assets/javascripts/spud/admin/post_comments.js",
    "app/assets/javascripts/spud/admin/posts.js",
    "app/assets/javascripts/spud/blog.js",
    "app/assets/javascripts/spud/blog/sitemaps.js",
    "app/assets/stylesheets/news.css",
    "app/assets/stylesheets/spud/admin/news_posts.css",
    "app/assets/stylesheets/spud/admin/post_categories.css",
    "app/assets/stylesheets/spud/admin/post_comments.css",
    "app/assets/stylesheets/spud/admin/posts.css",
    "app/assets/stylesheets/spud/blog/sitemaps.css",
    "app/controllers/blog_controller.rb",
    "app/controllers/news_controller.rb",
    "app/controllers/spud/admin/news_posts_controller.rb",
    "app/controllers/spud/admin/post_categories_controller.rb",
    "app/controllers/spud/admin/post_comments_controller.rb",
    "app/controllers/spud/admin/posts_controller.rb",
    "app/controllers/spud/blog/sitemaps_controller.rb",
    "app/helpers/blog_helper.rb",
    "app/helpers/news_helper.rb",
    "app/helpers/spud/admin/news_posts_helper.rb",
    "app/helpers/spud/admin/post_categories_helper.rb",
    "app/helpers/spud/admin/post_comments_helper.rb",
    "app/helpers/spud/admin/posts_helper.rb",
    "app/helpers/spud/blog/sitemaps_helper.rb",
    "app/models/spud_post.rb",
    "app/models/spud_post_category.rb",
    "app/models/spud_post_comment.rb",
    "app/views/blog/_comment.html.erb",
    "app/views/blog/_comment_form.html.erb",
    "app/views/blog/index.html.erb",
    "app/views/blog/index.rss.builder",
    "app/views/blog/show.html.erb",
    "app/views/layouts/spud/admin/post.html.erb",
    "app/views/news/index.html.erb",
    "app/views/news/index.rss.builder",
    "app/views/news/show.html.erb",
    "app/views/spud/admin/news_posts/edit.html.erb",
    "app/views/spud/admin/news_posts/index.html.erb",
    "app/views/spud/admin/news_posts/new.html.erb",
    "app/views/spud/admin/post_categories/_form.html.erb",
    "app/views/spud/admin/post_categories/edit.html.erb",
    "app/views/spud/admin/post_categories/index.html.erb",
    "app/views/spud/admin/post_categories/new.html.erb",
    "app/views/spud/admin/post_categories/show.html.erb",
    "app/views/spud/admin/posts/_category.html.erb",
    "app/views/spud/admin/posts/_form.html.erb",
    "app/views/spud/admin/posts/edit.html.erb",
    "app/views/spud/admin/posts/index.html.erb",
    "app/views/spud/admin/posts/new.html.erb",
    "app/views/spud/blog/sitemaps/show.xml.builder",
    "config/application.rb",
    "config/boot.rb",
    "config/routes.rb",
    "lib/generators/spud/blog/random_posts_generator.rb",
    "lib/generators/spud/blog/views_generator.rb",
    "lib/spud_blog.rb",
    "lib/spud_blog/configuration.rb",
    "lib/spud_blog/engine.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Spud Blog Engine"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spud_core>, [">= 0.6.0"])
    else
      s.add_dependency(%q<spud_core>, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<spud_core>, [">= 0.6.0"])
  end
end

