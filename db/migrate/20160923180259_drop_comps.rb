class DropComps < ActiveRecord::Migration[5.0]
  def change
    drop_table :comps
  end
end
