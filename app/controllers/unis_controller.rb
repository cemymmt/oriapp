class UnisController < ApplicationController
 def index
 end

 def unilist
  @universities = Uni.all
 end

 def select_options
 end

end
