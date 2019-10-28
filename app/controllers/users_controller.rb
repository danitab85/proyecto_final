class UsersController < ApplicationController

  def index
    @user = current_user
    @products = current_user.products
  end



end
