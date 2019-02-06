Rails.application.routes.draw do
  resources :students, only: [:index,:show,:new,:create,:edit]
  resources :school_classes, only: [:index,:show,:new,:create,:edit]

end
