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
  @products = Product.where()
end


  private
  def comment_params
    params.require(:comment).permit(:text, :student_id, :product_id)
  end

end
