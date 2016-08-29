class TodosController < ApplicationController
  before_action :require_login

  def index
    @todos = current_user.todos
    @todo = Todo.new
  end

  def create
    todo = Todo.new
    todo.attributes = todo_params.merge!(user_id:current_user.id)
    if todo.save
      redirect_to todos_path
    else
      render :index

    end
  end

  def update
    todo = Todo.find params[:id]
    if todo.update(todo_params)
      redirect_to todos_path
    else
      render :index
    end
  end

  private

  def todo_params
    params[:todo].permit(:title, :flinished)
  end

end
