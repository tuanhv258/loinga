class IndexesController < ApplicationController
  def index
  	@categories = Category.all
  end
end
