class UpdateTableCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :total, :string
  end
end
