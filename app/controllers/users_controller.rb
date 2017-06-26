class UsersController < ApplicationController
  def show
    user = User.find (params[:id])
    @order = user.order
  end

end
