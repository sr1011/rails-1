Rails.application.routes.draw do
  get 'hello/index'
  get 'hello/login_check'
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
