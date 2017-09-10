class CreateResponses < ActiveRecord::Migration[5.1]
  def up
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
  end
  def down
    drop_table  :responses
  end
end
