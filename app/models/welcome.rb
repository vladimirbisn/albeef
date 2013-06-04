class Welcome < ActiveRecord::Base
  attr_accessible :title, :description, :img_url
  mount_uploader :img_url, WelcomeUploader
end
