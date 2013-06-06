#coding: UTF-8
ActiveAdmin.register Production do
  menu label: 'Продукция'
  index do
    selectable_column
    column 'Название отруба', :part_title
    column 'Название блюда', :dish_title
    column 'Описание отруба', :top_description
    column 'Приготовление', :preparation
    column 'Ингридиенты', :ingredients
    column 'Номер отруба', :part_id

    column 'Изображение отруба1', 'photo' do |item|
      image_tag item.part_img_url1, width: 75
    end

    column 'Изображение отруба2', 'photo' do |item|
      image_tag item.part_img_url2, width: 75
    end

    column 'Изображение блюда', 'photo' do |item|
      image_tag item.dish_img_url, width: 75
    end

    default_actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Детально" do
      f.input :part_title, label: 'Название отруба'
      f.input :dish_title, label: 'Название блюда'
      f.input :top_description, label: 'Описание отруба', as: :html_editor
      f.input :ingredients, label: 'Ингридиенты', as: :html_editor
      f.input :preparation, label: 'Приготовление', as: :text
      f.input :part_id, label: 'Номер отруба'
      f.input :part_img_url1, label: 'Изображение отруба1', hint: f.object.part_img_url1 ? f.template.image_tag(f.object.part_img_url1, width: 300) : f.template.content_tag(:span, "Пока нет картинки")
      f.input :part_img_url2, label: 'Изображение отруба2', hint: f.object.part_img_url2 ? f.template.image_tag(f.object.part_img_url2, width: 300) : f.template.content_tag(:span, "Пока нет картинки")
      f.input :dish_img_url, label: 'Изображение блюда', hint: f.object.dish_img_url ? f.template.image_tag(f.object.dish_img_url, width: 300) : f.template.content_tag(:span, "Пока нет картинки")
    end
    f.actions
  end

end
