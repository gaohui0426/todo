class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title #varchar
      t.boolean :finished #tinyint

      t.timestamps null: false
      # created_at
      # updated_at
    end
  end
end
