class AddDetailsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :site_url, :string
    add_column :blogs, :source, :string
    add_column :blogs, :name, :string
    add_column :blogs, :email, :string
    add_column :blogs, :similar_title, :string
    add_column :blogs, :similar_url, :string
    add_column :blogs, :total_visits, :integer
    add_column :blogs, :bounce, :float
    add_column :blogs, :average_duration, :time
    add_column :blogs, :total_traffic_first_country, :integer
    add_column :blogs, :first_country, :string
    add_column :blogs, :second_country, :string
    add_column :blogs, :third_country, :string
    add_column :blogs, :fourth_country, :string
    add_column :blogs, :fifth_country, :string
    add_column :blogs, :first_country_traffic, :float
    add_column :blogs, :second_country_traffic, :float
    add_column :blogs, :third_country_traffic, :float
    add_column :blogs, :page_per_visit, :float
    add_column :blogs, :social, :float
    add_column :blogs, :paid_search, :float
    add_column :blogs, :search, :float
    add_column :blogs, :referral, :float
  end
end
