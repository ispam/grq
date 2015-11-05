class AddImageToContents < ActiveRecord::Migration
  def change
    add_column :contents, :image_id, :string
  end
end
