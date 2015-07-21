class DemoController < ApplicationController
  def index
    @name = "Mad"
    @array = [1,2,3,4,5]
    
  end
  
  def show 
    redirect_to ({:controller => "demo", :action => "index"})
  end
  
end
