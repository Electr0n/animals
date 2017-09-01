class CreateClinics < ActiveRecord::Migration[5.1]
  def up
    create_table :clinics do |t|
      t.string  :name
    end
  end

  def down
    drop_table :clinics
  end

end