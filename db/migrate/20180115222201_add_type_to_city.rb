class AddTypeToCity < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :type, :string
    add_index :cities, :type
    add_index :capitals, :type
  end
end
