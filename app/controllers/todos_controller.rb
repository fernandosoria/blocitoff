class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    
  end

  def create
    @todo = current_user.todos.build(todo_params)
    @todo.save
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
