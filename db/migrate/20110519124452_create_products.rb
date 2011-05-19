class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :meta
      t.text :desc
      t.decimal :price
      t.string :state
      t.integer :inventory

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
