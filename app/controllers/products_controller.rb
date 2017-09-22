class ProductsController < ApplicationController


  def kimono_list
  end

  def show
    @product = Product.find(params[:id])
    @uni = Uni.find(params[:uni_id])
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
    @uni = Uni.find(params[:uni_id])
    @products = Product.all
 end

 def search
  @uni = Uni.find(params[:uni_id])
  @products = Product.new
  @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%")
 end

 def search_color
  @uni = Uni.find(params[:uni_id])
  @products = Product.new
  @products = Product.where(color: params[:product])
end

  def search_price
  @uni = Uni.find(params[:uni_id])
  @products = Product.new
  @products = Product.where(range: params[:price])
  end

  def form
  Product_image.create(product_params)
  @product_image = Product_image
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :image_cache, :remove_image)
  end

  def comment_params
    params.require(:comment).permit(:text, :student_id, :product_id)
  end

end
