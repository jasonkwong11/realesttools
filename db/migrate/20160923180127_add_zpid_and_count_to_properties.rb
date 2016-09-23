class AddZpidAndCountToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :zpid, :string
    add_column :properties, :count, :string
  end
end
