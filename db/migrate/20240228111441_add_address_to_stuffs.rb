class AddAddressToStuffs < ActiveRecord::Migration[7.1]
  def change
    add_column :stuffs, :address, :string
  end
end
