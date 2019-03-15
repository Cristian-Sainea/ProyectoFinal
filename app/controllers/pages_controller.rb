class PagesController < ApplicationController
  
  def welcome
       @User = User.new
  end
  
end