class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :rank
      t.boolean :is_new
      t.boolean :is_featured
      t.boolean :is_member
      t.string :logo_src
      t.string :url
      t.string :category_name
      t.string :name_text
      t.string :name_url
      t.string :country
      t.string :tags
      t.text :des_short
      t.text :des_long
      t.string :crunchbase_url
      t.string :angellist_url

      t.timestamps null: false
    end
  end
end
