class ProductsController < ApplicationController


  def kimono_list
  end

  def show
  @product = Product.find(params[:id])
  @uni = Uni.find(params[:uni_id])
  end

 def index
  @uni = Uni.find(params[:uni_id])
  @products = Product.all
 end



end
