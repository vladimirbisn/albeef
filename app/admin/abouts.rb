#coding: UTF-8
ActiveAdmin.register About do
  menu label: 'Видео'
  index do
    selectable_column
    column 'Название', :name
    column 'Адрес видеоролика в интернете', :video_url
    column 'Активный', :is_active

    default_actions
  end

  form do |f|
    f.inputs "Детально" do
      f.input :name, label: 'Заголовок'
      f.input :video_url, label: 'Адрес видеоролика в интернете'
      f.input :is_active, label: 'Активный', :as => :boolean
    end
    f.actions
  end

end
