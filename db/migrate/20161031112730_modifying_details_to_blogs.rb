class ModifyingDetailsToBlogs < ActiveRecord::Migration
  def change
  	add_column :blogs, :similar_title_alt, :string
  	remove_column :blogs, :created_at, :datetime
  	remove_column :blogs, :updated_at, :datetime
  end
end
