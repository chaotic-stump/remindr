class GroceriesController < ApplicationController
  before_action :grocery, except: [:index, :new, :create]

  def index
  	@groceries = Grocery.all
  end

  def new
  	@grocery = Grocery.new
  end

  def create
  	@grocery = Grocery.new(grocery_params)
  	if @grocery.save
  		redirect_to groceries_path
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
    if @grocery.update(grocery_params)
      redirect_to grocery_path(@grocery)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    grocery_name = @grocery.name
    @grocery.destroy
    redirect_to groceries_path
  end

  private

  def grocery_params
  	params.require(:grocery).permit(:name, :completed)
  end

  def grocery
  	@grocery = Grocery.find(params[:id])
  end

end
