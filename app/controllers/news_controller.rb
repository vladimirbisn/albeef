class NewsController < ApplicationController
  layout "application2"
  def index
    @news = News.order("date DESC")
    @latest = @news[1]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end  
  end
end
