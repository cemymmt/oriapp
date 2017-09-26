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

def choose
  @unis = Uni.incremental_search(params[:name])
  respond_to do |format|
    format.json
  end
end

end
