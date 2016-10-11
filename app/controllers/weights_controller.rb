class WeightsController < ApplicationController
 def new
     @weight = Weight.new
 end
 
 def index
   @weights = Weight.all
 end
 
 def create 
   @weight = Weight.new(weight_params)
   if @weight.save
     redirect_to weights_path
   else
     render new_weights_path
   end
 end
 
 private
 
   def weight_params
     params.require(:weight).permit(:weight)
   end
 
 
end
