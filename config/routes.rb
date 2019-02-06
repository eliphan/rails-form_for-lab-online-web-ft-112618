Rails.application.routes.draw do
  resources :students, only: [:index,:show,:new,:create]
  resources :school_classes, only: [:index,:show,:new,:create]
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
  get 'school_classes/:id/edit', to: 'school_classes#edit', as: :edit_school_class
end
