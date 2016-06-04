class BankItemsController < ApplicationController
  def index
    @bank_items = BankItem.all
  end

  def new
    @bank_item = BankItem.new

  end

  def create
    @user = current_user
    @bank_item = @user.bank_items.new(bank_items_params)
  	if @bank_item.save
  		redirect_to bank_item_path(@bank_item)
  	else
  		render :new
  	end
  end


  def edit
    @user = current_user
    @bank_item = BankItem.find(params[:id])
  end

  def update
  end

  def show
    @bank_item = current_user.bank_items.find(params[:id])
    # commontator_thread_show(@bank_item)
  end

  def destroy
    @bank_item.destroy
    redirect_to root_path
  end

private
  def bank_items_params
    params.require(:bank_item).permit(:name, :priority, :amount, :due_date, :user_id)
  end

end
