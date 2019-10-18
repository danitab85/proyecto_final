class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end




private
  def product_params
      params.require(:product).permit(:content, :title, :photo, :description)
  end

end
