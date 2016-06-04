class TodoItemsController < ApplicationController
  before_action :todo_list
  before_action :todo_item, except: [:index, :new, :create]

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
    if @item.save
      redirect_to todo_list_item_path(@todo_list, @todo_item)
    else
      render:new
    end
  end

  def edit
  end

  def update
    @todo_item = Item.find(params[:id])
    if @todo_item.update(item_params)
      redirect_to todo_list_todo_item_path(@list, @item)
    else
      render :edit
    end
  end

  def destroy
    @todo_item.destroy
    redirect_to list_path(@todo_list)
  end

  private
    def todo_item_params
      params.require(:item).permit(:name, :complete)
    end

    def list
      @list = List.find(params[:list_id])
    end

    def item
      @item = Item.find.(params[:id])
    end
end
