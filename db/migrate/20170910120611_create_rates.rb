class CreateRates < ActiveRecord::Migration[5.1]
  def up
    create_table :rates do |t|
      t.integer     :counter
      t.integer     :value
      t.integer     :ratable_id
      t.string      :ratable_type
      t.references  :ratable, :polymorphic => true
    end
  end
  def down
    drop_table  :rates
  end
end
