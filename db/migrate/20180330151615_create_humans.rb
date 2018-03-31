class CreateHumans < ActiveRecord::Migration[5.1]
  def change
    create_table :humans do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_numbers
      t.string :street_name
      t.integer :birth_year

      t.timestamps
    end
  end
end
