class Production < ActiveRecord::Base
  attr_accessible :dish_img_url, :dish_title, :ingredients, :part_img_url1, :part_img_url2, :part_title, :preparation, :top_description, :part_id

  mount_uploader :part_img_url1, ProductionUploader
  mount_uploader :part_img_url2, ProductionUploader
  mount_uploader :dish_img_url, ProductionUploader

end
