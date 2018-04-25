class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def register
  end

  def thanks
  end

  def home
    @categories = Category.all
  end
  
  
  def category
    
    catName = params[:title]
    @items = Item.where("category like ?", catName)
    
    
  end
  
  
  def paid
    @order = Order.last
    
    @order.update_attribute(:status, "Paid in full by #{current_user.email}")
    
    session[:cart] = nil
  end
  
end

