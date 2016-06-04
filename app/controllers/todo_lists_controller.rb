class TodoListsController < ApplicationController
  before_action :todo_list, except: [:index, :new, :create]

  def index
    @todo_lists = TodoList.all
  end

  def show
    @todo_items = @todo_list.todo_items
  end

  def edit
  end

  def new
  end

  def create
    @todo_list = TodoList.new(todo_list_params)
      if @todo_list.save
        redirect_to todo_list_path(@todo_list)
      else
        render :new
      end
  end

  def update
    if @todo_list.update(todo_list_params)
      redirect_to todo_list_path(@todo_list)
    else
      render :edit
    end
  end

  def destroy
    
    @todo_list.destroy
    redirect_to todo_list_path
  end

  private
  def todo_list_params
    params.require(:todo_list).permit(:name, :description)
  end

  def todo_list
    @todo_list = TodoList.find(params[:id])
  end

  def todo_item
    @todo_item = TodoItem.find(params[:id])
  end
end
