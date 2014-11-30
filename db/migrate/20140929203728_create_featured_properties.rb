class CreateFeaturedProperties < ActiveRecord::Migration
  def change
    create_table :featured_properties do |t|
      t.integer :MLS
      t.integer :position

      t.timestamps
    end
  end
end
