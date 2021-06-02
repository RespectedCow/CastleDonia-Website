class CreateArchives < ActiveRecord::Migration[6.1]
  def change
    create_table :archives do |t|
      t.string :title
      t.integer :health
      t.float :actionrate
      t.integer :damage
      t.integer :speed
      t.integer :defense
      t.integer :range
      t.integer :troopDamage
      t.integer :maxDist
      t.text :description
      t.text :notes
      t.string :writer
      t.string :recent

      t.timestamps
    end
  end
end
