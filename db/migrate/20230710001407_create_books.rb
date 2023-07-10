class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.boolean :worth_reading
      t.integer :year_published

      t.timestamps
    end
  end
end
