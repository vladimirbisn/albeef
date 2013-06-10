# -*- coding: utf-8 -*-
class AddActiveRowToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :is_active, :boolean, :default => false
  end
end
