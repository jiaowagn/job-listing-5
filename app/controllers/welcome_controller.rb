class WelcomeController < ApplicationController
  def index
    flash[:warning] = "你好！"
  end
end
