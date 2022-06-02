Rails.application.routes.draw do
  resources :bills
  resources :intitutions
  resources :enrollments
  resources :students
  resources :institutions
  root 'home#index'
end
