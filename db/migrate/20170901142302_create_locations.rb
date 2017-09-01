class CreateLocations < ActiveRecord::Migration[5.1]
  def up
    create_table :locations do |t|
      t.string  :address
      t.float		:lat
      t.float		:lng
      t.integer :place_id
      t.string  :place_type
      t.references :place, :polymorphic => true
    end
    
  end

  def down
    drop_table :locations
  end
end
