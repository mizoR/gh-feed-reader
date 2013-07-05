GhFeedReader::Application.routes.draw do
  get "activities/show"
  resources :rsses
  get 'activities/:uid' => 'activities#show', as: :activity

  root 'welcome#index'
end
