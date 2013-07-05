GhFeedReader::Application.routes.draw do
  get "activities/show"
  resources :rsses
  get 'activities/:uid' => 'activities#show', as: :activity
  namespace :authors do
    get ':uid/activities' => 'activities#show', as: :activity
  end

  root 'welcome#index'
end
