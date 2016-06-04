class TodoItemsController < ApplicationController
  before_action :todo_list
  before_action :todo_item, only: [:edit, :update, :destroy, :show]

  def index
    @todo_items = @todo_list.todo_items
  end

  def show
  end

  def new
    @todo_item = TodoItem.new
  end

  def create
    @todo_item = @todo_list.todo_items.create(todo_item_params)
    if @todo_item.save
      redirect_to todo_list_path(@todo_list)
    else
      render:new
    end
  end

  def edit
  end

  def update
    @todo_item = TodoItem.find(params[:id])
    if @todo_item.update(todo_item_params)
      redirect_to todo_list_path(@todo_list) #, @todo_item)
    else
      render :edit
    end
  end

  def destroy
    @todo_item.destroy
    redirect_to todo_list_path(@todo_list)
  end

  private
    def todo_item_params
      params.require(:todo_item).permit(:name, :complete)
    end

    def todo_list
      @todo_list = TodoList.find(params[:todo_list_id])
    end

    def todo_item
      @todo_item = TodoItem.find(params[:id])
    end
end
