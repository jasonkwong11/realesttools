class RemoveIntegerColumnsInProperties < ActiveRecord::Migration[5.0]
  def change
    remove_columns :properties, :zpid, :count
  end
end
