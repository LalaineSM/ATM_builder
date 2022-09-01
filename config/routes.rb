Rails.application.routes.draw do
  devise_for :baccounts
  root 'atm#index'
  get 'atm/transac'
  get 'atm/show_bal'
  get 'atm/deposit'
  get 'transac_complete',  to: 'atm#transac_complete'
  
  post 'withdraw',         to: 'atm#withdraw'

end
