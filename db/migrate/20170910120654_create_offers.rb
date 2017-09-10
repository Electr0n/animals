class CreateOffers < ActiveRecord::Migration[5.1]
  def up
    create_table :offers do |t|
      t.string    :name
      t.text      :note
      t.string    :conditions
      t.string    :advantages
      t.datetime  :date_start
      t.datetime  :date_end
    end
  end

  def down
    drop_table  :offers
  end
end
