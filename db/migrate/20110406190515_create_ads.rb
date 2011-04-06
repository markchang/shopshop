class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :location
      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
