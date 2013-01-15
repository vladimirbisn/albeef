class NewsController < ApplicationController
  before_filter :set_paginator_params,  :get_news_per_page, :only => :index

  def index
  end

  def show
    @current_news = News.find(params[:id])
  end

  def set_paginator_params
    params[:page].nil? ? @current_page = 1 : @current_page = params[:page].to_i
    params[:per_page].nil? ? @per_page = 10 : @per_page = params[:per_page].to_i
  end

  def render_news_per_page
    set_paginator_params()
    get_news_per_page()

    render json: @news
  end

  def get_news_per_page
    @news = News.order("date DESC").page(@current_page).per(@per_page)
  end

end
