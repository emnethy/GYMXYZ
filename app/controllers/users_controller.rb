class UsersController < ApplicationController
   def new
     self.resource = resource_class.new(sign_in_params)
     store_location_for(resource, params[:redirect_to])
     super
   end
  
  def index
    @users = User.all
  end
  
   def login
        session[:login] = 1
        flash[:notice] = "You Logged In... Well Done!"
        redirect_to :controller => :items
   end
    
    
    def logout
        # session[:cart] = nil
        session[:login] = nil
        flash[:notice] = "Ok then see you next time!"
        redirect_to :controller => :items
    end
    
end
