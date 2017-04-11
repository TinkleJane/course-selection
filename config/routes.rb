Rails.application.routes.draw do
  resources :students, only: :show
  resources :teachers, only: [:index, :destory]
end
