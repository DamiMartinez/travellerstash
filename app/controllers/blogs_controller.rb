class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @blogs_visits = Blog.order(total_visits: :desc)
    @blogs_country = Blog.order(total_traffic_first_country: :desc)
  end

  def show
    @blog = Blog.find_by(similar_title_alt: params[:title])
    # @blog = params[:title]
    case params[:category]
    when "500k"
      @category_name = "+500K" 
      @blogs_category = Blog.where("total_visits > 500000").order(total_visits: :desc)
    when "250k"
      @category_name = "+250K" 
      @blogs_category = Blog.where("total_visits <= 500000 AND total_visits > 250000").order(total_visits: :desc)
    when "50k"
      @category_name = "+50K" 
      @blogs_category = Blog.where("total_visits <= 250000 AND total_visits > 50000").order(total_visits: :desc)
    when "1k"
      @category_name = "+1K" 
      @blogs_category = Blog.where("total_visits <= 50000 AND total_visits > 1000").order(total_visits: :desc)
    when "us"
      @category_name = "United States" 
      @blogs_category = Blog.where("first_country = 'United States' ").order(total_traffic_first_country: :desc)
    when "fr"
      @category_name = "France" 
      @blogs_category = Blog.where("first_country = 'France' ").order(total_traffic_first_country: :desc)
    when "sp"
      @category_name = "Spain" 
      @blogs_category = Blog.where("first_country = 'Spain' ").order(total_traffic_first_country: :desc)
    when "ph"
      @category_name = "Philippines" 
      @blogs_category = Blog.where("first_country = 'Philippines' ").order(total_traffic_first_country: :desc)
    end
  end
end
