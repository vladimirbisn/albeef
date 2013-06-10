class JobsController < ApplicationController
  def index
    @job_titles = Job.select("title, id").where(:is_active => true).limit(30)
  end
  def show
    @current_job = Job.find(params[:id])
  end
end
