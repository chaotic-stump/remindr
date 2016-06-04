class ProfilesController < ApplicationController
  def index
  	@users = User.where.not(id: current_user.id)
  end

  def show
  	@users = User.find(params[:id])
  end
end
