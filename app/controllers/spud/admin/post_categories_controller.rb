class Spud::Admin::PostCategoriesController < Spud::Admin::ApplicationController

	layout false
	respond_to :html, :json

	before_filter :find_category, :only => [:show, :edit, :update, :destroy]
	add_breadcrumb 'Post Categories', :spud_admin_post_categories_path
	belongs_to_spud_app :post_categories
	cache_sweeper :spud_post_category_sweeper, :only => [:create, :update, :destroy]

	def index
		@post_categories = SpudPostCategory.grouped
		respond_with @post_categories
	end

	def edit
		respond_with @post_category
	end

	def update
		if @post_category.update_attributes(params[:spud_post_category])
			flash[:notice] = 'Post Category was successfully updated' 
			expire_post_actions
			respond_with @post_category, :location => spud_admin_post_categories_path
		else
			render 'new', :status => 422
		end
	end

	def new
		@post_category = SpudPostCategory.new
		respond_with @post_category
	end

	def create
		@post_category = SpudPostCategory.new(params[:spud_post_category])
		if @post_category.save
			flash[:notice] = 'Post Category was successfully created'
			expire_post_actions
			respond_with @post_category, :location => spud_admin_post_categories_path
		else
			render 'new', :status => 422
		end
	end

	def destroy
		if @post_category.destroy
			if @post_category.children.any?
				@post_category.children.update_attribute(:parent_id, @post_category.parent_id)
			end
			flash[:notice] = 'Post Category was successfully deleted'
			expire_post_actions
		end
		respond_with @post_category, :location => spud_admin_post_categories_path
	end

	private

	def find_category
		@post_category = SpudPostCategory.find(params[:id])
	end

	def expire_post_actions
		expire_action news_url if Spud::Blog.config.news_enabled
		expire_action blog_url if Spud::Blog.config.blog_enabled
	end

end