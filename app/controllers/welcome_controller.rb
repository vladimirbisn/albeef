class WelcomeController < ApplicationController
  def index
    @latest_three_news = News.order("date DESC").limit(3)
  end
end
