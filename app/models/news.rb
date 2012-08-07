class News < ActiveRecord::Base
  attr_accessible :header, :body, :date, :pic_title, :id, :created_at, :updated_at
end