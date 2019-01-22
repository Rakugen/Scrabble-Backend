class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :score, default: 0
      t.integer :board_id
      t.integer :bag_id

      t.timestamps
    end
  end
end
