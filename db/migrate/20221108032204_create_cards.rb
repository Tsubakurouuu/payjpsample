class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.string :token_id

      t.timestamps
    end
  end
end
