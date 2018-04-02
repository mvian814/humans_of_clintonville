class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :weight
      t.integer :age
      t.integer :human_id

      t.timestamps
    end
  end
end
