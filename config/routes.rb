Rails.application.routes.draw do
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contacts'

  root 'static_pages#home'
end
