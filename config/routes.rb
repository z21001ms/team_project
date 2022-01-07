Rails.application.routes.draw do
  root 'welcome#index'

  post "/", to: "coordinate#find"
end
