class UnisController < ApplicationController
 def index
 end

 def unilist
  @universities = Uni.all
 end

def search
  binding.pry
  @unis = Uni.where('title LIKE(?)', "%#{params[:keyword]}%")
end


end
