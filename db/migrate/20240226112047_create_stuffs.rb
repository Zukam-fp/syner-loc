class CreateStuffs < ActiveRecord::Migration[7.1]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.float :price
      t.string :category

      t.timestamps
    end
  end
end
