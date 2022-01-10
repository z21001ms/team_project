Rails.application.routes.draw do
  root 'welcome#index'

  get "/find", to: "coordinate#find"
end
