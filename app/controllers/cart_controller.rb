class CartController < ApplicationController
   before_action :authenticate_user!
  def index
    # pass the information to the view page of cart 
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end  
    
  end
  
  def add 
    # get the id of the product we want to add
    
    id = params[:id]
    
    # if the session is already there use that if not make a new session
    
    if session[:cart]
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end  
    
    
    # if the product already is in the cart increase the quantity by 1
    
    if cart[id] then
      cart[id] = cart[id] + 1
    else 
      cart[id] = 1 
    end
      def clearCart
    #sets session variable to nil and bring back to index
    session[:cart] = nil
      end
  end
    redirect_to :action => :index
    
end
  

