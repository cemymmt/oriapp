class ProductsController < ApplicationController

  def kimono_list
  end

  def show
  @product = Product.find(params[:id])
  @uni = Uni.find(params[:uni])
  end

 def select_options
  @uni = Uni.find(params[:id])
  @products = Product.all
 end

  def booking
  end
end
