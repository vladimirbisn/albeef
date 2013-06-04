# -*- coding: utf-8 -*-
class FillAboutWithVideos < ActiveRecord::Migration
  def change
    About.create(:name => "Мраморная говядина из Липецка", :video_url => "http://www.youtube.com/v/wUtMDuJBl3c?version=3", :is_active => true)
    About.create(:name => "Аграхолдинг 'ЗЕРОС' ", :video_url => "http://www.youtube.com/v/wUtMDuJBl3c?version=3", :is_active => false)
    About.create(:name => "АЛБИФ - мраморное мясо", :video_url => "http://www.youtube.com/watch?v=0d4946wVZUM", :is_active => false)
  end

end


