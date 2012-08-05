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
  resources :news do
    collection do
      get :open
    end
  end
  resources :jobs do
    collection do
      get :apply
      get :job_descr
      post :results
    end
  end

  resources :contacts

end
