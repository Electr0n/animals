class CreatePharmacies < ActiveRecord::Migration[5.1]
  def up
    create_table :pharmacies do |t|
      t.string  :name
      t.string  :sites
      t.text    :about
      t.boolean :medicine
      t.boolean :scale
    end
  end
  def down
    drop_table  :pharmacies
  end
end
