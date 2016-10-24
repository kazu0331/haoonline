class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer            :status
      t.string             :name
      t.text               :image
      t.integer            :product_id
      t.timestamps 
    end
  end
end
