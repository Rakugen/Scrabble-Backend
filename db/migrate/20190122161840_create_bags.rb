class CreateBags < ActiveRecord::Migration[5.2]
  def change
    create_table :bags do |t|
      t.integer :num_tiles

      t.timestamps
    end
  end
end
