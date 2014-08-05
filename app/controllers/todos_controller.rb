class TodosController < ApplicationController
  def index
    @todos = current_user.todos.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.build(todo_params)
    
    if @todo.save
      redirect_to todos_path, notice: 'Your new Todo was saved.'
    else
      render :new, error: 'There was an error saving your Todo.  Please try again.'
    end
  end

  def destroy
    @todo = current_user.todos.find(params[:id])

    if @todo.destroy?
      redirect_to todos_path, notice: 'Todo has been removed.'
    else
      redirect_to todos_path, error: 'There was an error removing the Todo item.  Please try again.'
    end    
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
