class ProductsController < ApplicationController


  def kimono_list
  end

  def show
  @product = Product.find(params[:id])
  @uni = Uni.find(params[:uni_id])
  @comments = Comment.all
  @comment = Comment.new
  @discount = Discount.where(university_id: @uni.id, company_id: @product.company.id)
  end

  def create
  Comment.create(comment_params)
  @comments = Comment.all
  end

  def destroy
    Comment.find(params[:format]).destroy
    @comments = Comment.all
  end

 def index
  @uni = Uni.find(params[:uni_id])
  @products = Product.all
 end

  def find
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

end
