Rails.application.routes.draw do
  devise_for :baccounts
  root 'atm#index'
  # get 'atm/login'
  get 'atm/transac'
  get 'atm/show_bal'
  # get 'atm/signup'
  get 'atm/deposit'

  post 'users', to: 'atm#create'

end
