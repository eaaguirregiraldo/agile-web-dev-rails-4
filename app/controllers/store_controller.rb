class StoreController < ApplicationController

  def index
  	@products = Product.order(:title)
  	@count = counter
  end

  def reset_counter
  	@count = session[:session] = 0 
  end

  def counter
  	# if session[:counter].nil? session[:counter] = 0 : session[:counter] += 1
  	if session[:counter].nil?
  		session[:counter] = 0
  	else
  		session[:counter] += 1
  	end
  end

end
