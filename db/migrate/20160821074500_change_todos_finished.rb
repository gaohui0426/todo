class ChangeTodosFinished < ActiveRecord::Migration[5.0]
  def change
    change_column :todos, :finished, :boolean, default: false
  end
end
