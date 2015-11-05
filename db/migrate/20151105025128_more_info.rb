class MoreInfo < ActiveRecord::Migration
  def change
  	add_column :contents, :image_filename, :string
    add_column :contents, :image_size, :integer
    add_column :contents, :image_content_type, :string
  end
end
