class Job < ActiveRecord::Base
  attr_accessible :title, :requirements, :responsobilities, :conditions, :id, :created_at, :updated_at, :is_active
end
