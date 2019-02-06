Rails.application.routes.draw do
  resources :students, only: [:index,:show,:new,:create,:edit]
  resources :school_classes, only: [:index,:show,:new,:create,:edit]
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
  get 'school_classes/:id/edit', to: 'school_classes#edit', as: :edit_school_class
end
