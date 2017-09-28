class ProductsController < ApplicationController
  before_action :set_uni, only: [:index, :show,:search, :search_color, :search_price]

  def kimono_list
  end

  def show
    @product = Product.find(params[:id])
    @comments = Comment.where(product_id: @product.id)
    @comment = Comment.new
    @discount = Discount.where(university_id: @uni.id, company_id: @product.company.id)
    @eventdetail = Eventdetail.where(company_id: @product.company.id)
  end

  def create
    # binding.pry
    Comment.create(comment_params)
    @product = Product.find(params[:comment][:product_id])
    @comments = Comment.where(product_id: @product.id).last
  end

  def destroy
    Comment.find(params[:format]).destroy
    @product = Product.find(params[:comment][:product_id])
    @comments = Comment.where(product_id: @product.id).last
  end

 def index
    @products = Product.all
    @eventdetail = Eventdetail.all
 end

 def search
  @products = Product.new
  @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%")
 end

 def search_color
  @products = Product.new
  @products = Product.where(color: params[:product])
end

  def search_price
  @products = Product.new
  @products = Product.where(range: params[:price])
  end

  def form
  # Product_image.create(product_params)
   @product_image = ProductImage.new
  # @product_image ||= nil
  end

  def form_create
    @product_image = ProductImage.find(params[:id])
    @product_image.save
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :image_cache, :remove_image)
  end

  def comment_params
    params.require(:comment).permit(:text, :student_id, :product_id)
  end

  def set_uni
    @uni = Uni.find(params[:uni_id])
  end
end
