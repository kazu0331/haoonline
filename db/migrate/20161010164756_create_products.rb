class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string           :product_name
      t.text             :explanation1
      t.text             :explanation2
      t.text             :explanation3
      t.string             :price
      t.timestamps 
    end
  end
end
