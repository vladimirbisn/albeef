Albeef::Application.routes.draw do

  root :to => 'welcome#index'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'welcome#index'

  post "/news/render_news_per_page"

  post "/production/render_animal_part"

  resources :news

  resources :jobs

  match ':controller(/:action(/:id(.:format)))'

end
