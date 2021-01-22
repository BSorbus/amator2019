class StaticPagesController < ApplicationController

  caches_page :home, :declaration, :gzip => :best_speed

  def home
  end

  def declaration
  end

end
