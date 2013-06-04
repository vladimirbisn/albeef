# -*- coding: utf-8 -*-
class AddDataToJob < ActiveRecord::Migration
  def change
    common_conditions = 'Соблюдение ТК РФ;<br>доставка служебным транспортом;<br>льготное питание;<br>работа в крупной развивающейся компании.<br>'
    Job.create(:title => "Инженер КИПиА", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Электромонтер по ремонту и обследованию оборудования", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Грузчик", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Рабочая столовой", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Упаковщик", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
    Job.create(:title => "Рабочий цеха шкуропосола", :requirements => "-", :responsobilities => "-", :conditions => common_conditions)
  end
end
