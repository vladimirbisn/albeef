#coding: UTF-8
ActiveAdmin.register News do
  menu label: 'Новости'
  index do
    selectable_column
    column 'Дата', :date
    column 'Заголовок', :header
    column 'Основной текст', :body
    column 'Имя файла изображения', :pic_title
    column 'Изображение', 'photo' do |item|
    image_tag item.pic_title, width: 150
    end
    default_actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Детально" do
      f.input :header, label: 'Заголовок'
      f.input :date, label: 'Дата и время события', :as => :datepicker
      f.input :body, label: 'Основной текст', as: :html_editor
      f.input :pic_title, label: 'Основное изображение', hint: f.object.pic_title ? f.template.image_tag(f.object.pic_title, width: 300) : f.template.content_tag(:span, "Пока нет картинки")
    end
    f.actions
  end

end
