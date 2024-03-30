class WelcomeController < ApplicationController
  def index
    @products=Store.limit(3)
  end
end
