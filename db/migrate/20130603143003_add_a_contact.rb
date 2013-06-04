# -*- coding: utf-8 -*-
class AddAContact < ActiveRecord::Migration
  def up
    Contact.create(:address => "399265, Липецкая область, Хлевенский район, х. Елец-Маланинский", :phone => "8-(47477) 2-31-12", :fax => "8-(47477) 2-31-58", :emails => "zakaz@lzeros.ru, albeef@hlevnoe.lipetsk.ru")
  end

  def down
  end
end
