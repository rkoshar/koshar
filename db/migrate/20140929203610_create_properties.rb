class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :MLS
      t.string :status
      t.float :CurrListPrice
      t.datetime :ListDate
      t.string :StreetAddress
      t.string :StreetName
      t.string :StreetSuffix
      t.string :City
      t.string :State
      t.string :ZIP
      t.string :Area
      t.integer :Bedrooms
      t.float :Bathrooms
      t.float :SquareFootage
      t.float :LotSize
      t.text :Remarks
      t.integer :YearBuilt
      t.string :Type

      t.timestamps
    end
  end
end
