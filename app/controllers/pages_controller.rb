class PagesController < ApplicationController
  
  def signup
       @User = User.new
  end
  def welcome
       @User = User.new
  end
end