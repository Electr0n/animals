class CreateClinics < ActiveRecord::Migration[5.1]
  def up

    create_table :clinics do |t|
      t.string  :name
    end

    create_table :locations do |t|
      t.string      :address
      t.float       :lat
      t.float       :lng
      t.integer     :locatable_id
      t.string      :locatable_type
      t.references  :locatable, :polymorphic => true
    end

    create_table :rates do |t|
      t.integer     :counter
      t.integer     :value
      t.integer     :ratable_id
      t.string      :ratable_type
      t.references  :ratable, :polymorphic => true
    end

    create_table :schedules do |t|
      t.text        :work_days
      t.text        :work_hours
      t.text        :break_hours
      t.string      :note
      t.references  :schedulable, :polymorphic => true    
    end
  end

  def down
    drop_table  :clinics
    drop_table  :locations
    drop_table  :rates
    drop_table  :schedule
  end

end