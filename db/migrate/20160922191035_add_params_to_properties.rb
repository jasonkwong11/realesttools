class AddParamsToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :zpid, :integer
    add_column :properties, :count, :integer
  end
end
