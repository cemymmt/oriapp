class StudentsController < ApplicationController

def show
  @student = Student.find(params[:id])
  @favorites = Favorite.where("student_id = ?", @student)
end
