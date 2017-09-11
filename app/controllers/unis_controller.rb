class UnisController < ApplicationController
 def index
 end

 def unilist
  @universities = Uni.all
 end

def search
  @unis = Uni.new
  @unis = Uni.where('name LIKE(?)', "%#{params[:keyword]}%")
end


end
