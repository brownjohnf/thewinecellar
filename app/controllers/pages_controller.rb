class PagesController < ApplicationController

  def home
    if signed_in?
      @title = 'Your Cellar'
      @cellars = current_user.cellars
      @bottles = []
      @cellars.each do |c|
        @bottles += c.bottles
      end
    end
  end

end
