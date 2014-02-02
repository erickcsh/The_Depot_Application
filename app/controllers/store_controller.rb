class StoreController < ApplicationController
  def index
    @products = Product.all
    @counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter+=1
    session[:counter] = @counter
  end
end
