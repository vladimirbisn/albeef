#coding: UTF-8
ActiveAdmin.register Welcome do
  menu label: 'Слайдер'
  index do
    selectable_column
    column 'Заголовок', :title
    column 'Описание', :description
    column 'Путь к изображению', :img_url
    column 'Изображение', 'photo' do |item|
      image_tag item.img_url, width: 200
    end
    default_actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Детально" do
      f.input :title, label: 'Заголовок'
      f.input :description, label: 'Описание', as: :html_editor
      f.input :img_url, label: 'Изображение', hint: f.object.img_url ? f.template.image_tag(f.object.img_url, width: 500) : f.template.content_tag(:span, "Пока нет картинки"), as: :file
    end
    f.actions
  end

end
