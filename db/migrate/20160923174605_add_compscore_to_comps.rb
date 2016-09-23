class AddCompscoreToComps < ActiveRecord::Migration[5.0]
  def change    
    add_column :comps, :compscore, :string
  end
end
