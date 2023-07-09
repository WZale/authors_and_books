class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :dead_white_guy
      t.integer :year_of_birth
      t.string :country_of_origin

      t.timestamps
    end
  end
end
