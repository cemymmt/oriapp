class StudentsController < ApplicationController


def show
  @student = current_student
  @favorites = Favorite.where("student_id = ?", @student)
end

end
