class AboutController < ApplicationController
  def index
    @active_video = About.where(:is_active => true)
  end
end
