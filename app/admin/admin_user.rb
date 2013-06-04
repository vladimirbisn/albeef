#coding: UTF-8
ActiveAdmin.register AdminUser do
  menu label: 'Пользователи'
  index do
    column :email
    column 'Дата последнего входа', :last_sign_in_at
    column 'Количество входов', :sign_in_count
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email, label: 'Email'
      f.input :password, label: 'Пароль'
      f.input :password_confirmation, label: 'Подтверждение пароля'
    end                               
    f.actions                         
  end                                 
end                                   
