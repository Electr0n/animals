class CreateDiscounts < ActiveRecord::Migration[5.1]
  def up
    create_table :discounts do |t|
      t.string  :name
      t.text    :note
      t.integer :values
    end
  end
  def down
    drop_table  :discounts
  end
end
