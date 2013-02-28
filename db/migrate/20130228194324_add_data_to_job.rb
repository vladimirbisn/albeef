# -*- coding: utf-8 -*-
class AddDataToJob < ActiveRecord::Migration
  def change
    common_conditions = '<p>Соблюдение ТК РФ;</p><p>доставка служебным транспортом;</p><p>льготное питание;</p><p>работа в крупной развивающейся компании.</p>'
    Job.create(:title => "Инженер КИПиА", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Электромонтер по ремонту и обследованию оборудования", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Грузчик", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Рабочая столовой", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Упаковщик", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Рабочий цеха шкуропосола", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
  end
end
