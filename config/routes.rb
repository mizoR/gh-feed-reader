GhFeedReader::Application.routes.draw do
  resources :rsses

  root 'welcome#index'
end
