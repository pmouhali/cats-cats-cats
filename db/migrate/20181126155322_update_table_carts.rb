class UpdateTableCarts < ActiveRecord::Migration[5.2]
  def change
    add_reference :carts, :item, index: true
    add_foreign_key :carts, :items
    add_column :carts, :total, :string
  end
end
