class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :username
      t.string :password
      t.integer :secret_number

      t.timestamps
    end
  end
end
