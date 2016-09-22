class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.float :latitude
      t.float :longitude
      t.decimal :zestimate
      t.decimal :thirty_day_change
      t.decimal :percentile
      t.decimal :rent_zestimate
      t.integer :year_tax_assessed
      t.decimal :tax_assessment
      t.integer :year_built
      t.integer :square_feet
      t.integer :bathrooms
      t.integer :bedrooms
      t.date :last_sold_date
      t.decimal :last_sold_price
      t.float :compscore
    end
  end
end
