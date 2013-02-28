Albeef::Application.routes.draw do

  root :to => 'welcome#index'

  post "/news/render_news_per_page"

  resources :news

  resources :jobs

  match ':controller(/:action(/:id(.:format)))'

end
