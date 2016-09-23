class AddPropertyIdToComps < ActiveRecord::Migration[5.0]
  def change
    add_column :comps, :property_id, :integer
  end
end
