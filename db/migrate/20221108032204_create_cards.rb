class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :customer_id
      t.string :token_id
      t.references :user,        foreign_key: true

      t.timestamps
    end
  end
end
