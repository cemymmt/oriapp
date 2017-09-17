class FavoritesController < ApplicationController

before_action :authenticate_student!, only: :create

def create
  @student_id = current_student.id
  @product_id = Product.find(params[:format]).id
  @favorite = Favorite.new(product_id: @product_id, student_id: @student_id)
  if @favorite.save
    redirect_to student_path(current_student.id)
  end
end


def destroy
  @favorite = Favorite.find(params[:id])
  if @favorite.destroy
    redirect_to  student_path(session[:id])
end
end

end
