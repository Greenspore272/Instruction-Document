class CreateLessons < ActiveRecord::Migration[8.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.string :section
      t.integer :order

      t.timestamps
    end
  end
end
