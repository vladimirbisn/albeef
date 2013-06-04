class RemoveAllPicturesFrom < ActiveRecord::Migration
  def up
    ActiveRecord::Base.subclasses.each(&:delete_all)
  end

  def down
  end
end
