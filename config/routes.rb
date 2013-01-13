Albeef::Application.routes.draw do

  root :to => 'welcome#index'

  post "/news/render_news_per_page"

  resources :news

  resources :jobs do
    collection do
      get :job_descr
    end
  end

  match ':controller(/:action(/:id(.:format)))'

end
