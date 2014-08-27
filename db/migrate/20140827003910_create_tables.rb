class CreateTables < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
    end

    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.integer :buyer_id
      t.integer :shop_id
    end

    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :favorite_brand
    end
  end
end
