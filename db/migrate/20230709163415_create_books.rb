class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :title
      t.boolean :worth_reading
      t.integer :year_published

      t.timestamps
    end
  end
end
