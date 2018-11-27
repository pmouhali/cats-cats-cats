class AddThingToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :items, :description, :text
  	add_reference :orders, :cart
  	add_column :orders, :total, :integer
  end
end
