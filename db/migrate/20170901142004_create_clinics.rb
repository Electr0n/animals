class CreateClinics < ActiveRecord::Migration[5.1]
  def up

    create_table :clinics do |t|
      t.string  :name
      t.string  :sites
      t.text    :about
      t.boolean :chip
    end

    create_table :pharmacies do |t|
      t.string  :name
      t.string  :sites
      t.text    :about
      t.boolean :medicine
      t.boolean :scale
    end

    create_table :locations do |t|
      t.string      :address
      t.string      :metro
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
      t.integer     :schedulable_id
      t.string      :schedulable_type
      t.references  :schedulable, :polymorphic => true    
    end

    create_table :phones do |t|
      t.integer     :country_code
      t.integer     :provider_code
      t.integer     :number
      t.string      :note
      t.integer     :phonable_id
      t.string      :phonable_type
      t.references  :phonable, :polymorphic => true
    end

    create_table :responses do |t|
      t.string      :head
      t.text        :body
      t.integer     :mark
      t.datetime    :created_at
      t.datetime    :updated_at
      t.integer     :responsable_id
      t.string      :responsable_type
      t.references  :responsable, :polymorphic => true
    end

    create_table :offers do |t|
      t.string    :name
      t.text      :note
      t.string    :conditions
      t.string    :advantages
      t.datetime  :date_start
      t.datetime  :date_end
    end

    create_table :discounts do |t|
      t.string  :name
      t.text    :note
      t.integer :values
    end

  end

  def down
    drop_table  :clinics
    drop_table  :locations
    drop_table  :rates
    drop_table  :schedules
    drop_table  :phones
    drop_table  :responses
    drop_table  :pharmacies
    drop_table  :offers
    drop_table  :discounts
  end

end