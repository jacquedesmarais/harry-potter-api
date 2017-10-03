class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :house

      t.timestamps
    end
  end
end
