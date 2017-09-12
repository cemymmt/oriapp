class ProductsController < ApplicationController

before_action :authenticate_student!, only: :booking
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

  def new
    @product = Product.find(params[:product_id])
    @booking = Booking.new
  end

  def create
    Booking.create(create_params)
    redirect_to controller: :products, action:  :index
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review).merge(product_id: params[:product_id], student_id: current_user.id)
  end

end
