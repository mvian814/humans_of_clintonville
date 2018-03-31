class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.integer :weight
      t.integer :age
      t.integer :human_id

      t.timestamps
    end
  end
end
