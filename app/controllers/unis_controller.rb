class UnisController < ApplicationController
 def top
 end

 def index
  @universities = Uni.all
 end

def search
  @unis = Uni.new
  @unis = Uni.where('name LIKE(?)', "%#{params[:keyword]}%")
end


end
