class CreateSchedules < ActiveRecord::Migration[5.1]
  def up
    create_table :schedules do |t|
      t.text        :work_days
      t.text        :work_hours
      t.text        :break_hours
      t.string      :note
      t.integer     :schedulable_id
      t.string      :schedulable_type
      t.references  :schedulable, :polymorphic => true    
    end
  end
  def down
    drop_table  :schedules
  end
end
