class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :content
      t.references :gold, foreign_key: true
      t.integer :position
      t.boolean :done, null: false

      t.timestamps
    end
  end
end
