Rails.application.routes.draw do
  root 'qr_details#index'
  resources :qr_details
end
