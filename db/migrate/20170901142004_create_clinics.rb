class CreateClinics < ActiveRecord::Migration[5.1]
  def up
    create_table :clinics do |t|
      t.string  :name
      t.string  :sites
      t.text    :about
      t.boolean :chip
    end
  end
  def down
    drop_table  :clinics
  end
end