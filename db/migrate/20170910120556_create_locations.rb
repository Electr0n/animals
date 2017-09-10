class CreateLocations < ActiveRecord::Migration[5.1]
  def up
    create_table :locations do |t|
      t.string      :address
      t.string      :metro
      t.float       :lat
      t.float       :lng
      t.integer     :locatable_id
      t.string      :locatable_type
      t.references  :locatable, :polymorphic => true
    end
  end
  def down
    drop_table  :locations
  end
end
