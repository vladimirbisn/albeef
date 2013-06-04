class News < ActiveRecord::Base
  attr_accessible :header, :body, :date, :pic_title, :id, :created_at, :updated_at
  mount_uploader :pic_title, NewsUploader

  #validate :check_image_dimensions
  #
  #def check_image_dimensions
  #  if image_changed? || new_record?
  #    if image_width < 988 || image_height < 599
  #      errors.add :image, "Картинка должна быть минимум 988 на 599, ваша #{image_width} на #{image_height}"
  #    end
  #  end
  #end

end