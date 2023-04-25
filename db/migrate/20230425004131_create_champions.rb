class CreateChampions < ActiveRecord::Migration[6.1]
  def change
    create_table :champions do |t|
      t.string :name, null: false, unique: true
      t.text :description, null: false

      t.timestamps
    end
    add_index :champions, :name, unique: true
  end
end
