class NewsController < ApplicationController
  layout "application2"

  def index
    @news = News.order("date desc")
    @latest = @news.first


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end  
  end

  def get_news_per_page()
    @news = News.order("date DESC")
    offset = params[:page].to_i*10
    render json: @news.limit(10).offset(offset)
  end

  def show
    @new = News.find(params[:id])
    #@next_new_id =  News.where(:id < ?", "2")
    respond_to do |format|
      format.html # show.haml
      format.json { render json: @news }
    end
  end


end
