class CreateTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tiles do |t|
      t.string :letter
      t.integer :value
      t.integer :user_id
      t.integer :bag_id
      t.integer :board_id
      t.boolean :placed, default: false

      t.timestamps
    end
  end
end
