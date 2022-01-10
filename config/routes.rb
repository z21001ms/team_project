Rails.application.routes.draw do
  root 'welcome#index'

  get "/find", to: "coordinate#find"
  get "/register", to: "song#register"
  post "/create", to: "song#create"
end
