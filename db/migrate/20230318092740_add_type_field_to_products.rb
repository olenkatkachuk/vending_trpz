class AddTypeFieldToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :type, :string
  end
end
