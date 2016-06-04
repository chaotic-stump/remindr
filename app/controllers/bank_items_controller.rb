class BankItemsController < ApplicationController
  def index
    @bank_items = Bank_item.all
  end

  def new
    @bank_items
  end

  def create
  end


  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

private
  def bank_items_params
  end

end
