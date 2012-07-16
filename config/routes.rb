Albeef::Application.routes.draw do

  get "contacts/index"

  get "jobs/index"

  get "production/index"

  get "about/index"

  get "news/index"

  get "welcome/index"

  root :to => 'welcome#index'

  resources :about
  resources :production
  resources :news
  resources :jobs
  resources :contacts

end
