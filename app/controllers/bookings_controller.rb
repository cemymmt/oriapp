class BookingsController < ApplicationController

before_action :authenticate_student!, only: :new

  def new
    @booking = Booking.new
    @uni = Uni.find(params[:uni_id])
    @product = Product.find(params[:product_id])
    @student = current_student
    @eventdates = Eventdate.where(uni_id: params[:uni_id], company_id: @product.company.id)
  end

  def create
    Booking.create(create_params)
    @uni = Uni.find(params[:uni_id])
    @product = Product.find(params[:product_id])
    @student = current_student
    @eventdates = Eventdate.where(uni_id: params[:uni_id], company_id: @product.company.id)
    @booking = Booking.where(stuednt_id: current_student.id)
  end

  def create_params
    params.require(:booking).permit(:eventdate_id, :text).merge(product_id: params[:product_id], student_id: current_student.id)
  end

end
