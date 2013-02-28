class JobsController < ApplicationController
  def index
    @job_titles = Job.select("title, id").limit(30)
  end
  def show
    @current_job = Job.find(params[:id])
  end
end
