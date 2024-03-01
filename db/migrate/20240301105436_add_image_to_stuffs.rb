class AddImageToStuffs < ActiveRecord::Migration[7.1]
  def change
    add_column :stuffs, :image, :string
  end
end
