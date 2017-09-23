class ProductImagesController < ApplicationController

  def new
    @product_image = ProductImage.new
  end

  def create
    ProductImage.create(product_params)
    @photo = ProductImage.last
    @company = @photo.product.company
  end

  private
   def product_params
    params.require(:product_image).permit(:photo, :product_id)
  end

end
