class FixTypeField < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :type, :type2
  end
end
