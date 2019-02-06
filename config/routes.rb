Rails.application.routes.draw do
  resources :students, only: [:index,:show,:new,:create]
  resources :school_classes, only: [:index,:show,:new,:create]

end
