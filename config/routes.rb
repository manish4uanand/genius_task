Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/give_time'=>"dashboard#give_time"
  get 'dashboard/punch_login_time'=>"dashboard#punch_login_time"
  root to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
