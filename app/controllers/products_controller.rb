class ProductsController < ApplicationController


  def kimono_list
  end

  def show
  @product = Product.find(params[:id])
  @uni = Uni.find(params[:uni_id])
  @comments = Comment.all
  @comment = Comment.new
  end

  def create
  Comment.create(comment_params)
  @comments = Comment.all
  end

  def destroy
    Comment.find(params[:format]).destroy
    @comments = Comment.all
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

 def index
  @uni = Uni.find(params[:uni_id])
  @products = Product.all
 end



end
