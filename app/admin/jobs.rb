#coding: UTF-8
ActiveAdmin.register Job do
  menu label: 'Вакансии'
  index do
    column 'Название', :title
    column 'Основные требования', :requirements
    column 'Обязанности',:responsobilities
    column 'Условия', :conditions
    default_actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Детально" do
      f.input :title, label: 'Название'
      f.input :requirements, label: 'Основные требования', as: :html_editor
      f.input :responsobilities, label: 'Обязанности', as: :html_editor
      f.input :conditions, label: 'Условия', as: :html_editor
    end
    f.actions
  end

end
