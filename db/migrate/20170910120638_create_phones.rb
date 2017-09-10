class CreatePhones < ActiveRecord::Migration[5.1]
  def up
    create_table :phones do |t|
      t.integer     :country_code
      t.integer     :provider_code
      t.integer     :number
      t.string      :note
      t.integer     :phonable_id
      t.string      :phonable_type
      t.references  :phonable, :polymorphic => true
    end
  end
  def down
    drop_table  :phones
  end
end
