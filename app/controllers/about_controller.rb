class AboutController < ApplicationController
  def index
    @active_video = About.where(:is_active => true)
    #User.where("name like '%?%'", params[:query]).to_sql
  end
end
