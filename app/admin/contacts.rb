#coding: UTF-8
ActiveAdmin.register Contact do
  menu label: 'Контакты'
  index do
    selectable_column
    column 'Адрес', :address
    column 'Телефон', :phone
    column 'Факс', :fax
    column 'Emails', :emails
    default_actions
  end

  form do |f|
    f.inputs "Детально" do
      f.input :address, label: 'Адрес'
      f.input :phone, label: 'Телефон'
      f.input :fax, label: 'Факс'
      f.input :emails, label: 'Emails'
    end
    f.actions
  end

end
