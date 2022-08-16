Rails.application.routes.draw do
    root 'atm#login'
  get 'atm/index'
  get 'atm/login'
  get 'atm/transac'
  get 'atm/show_bal'
  get 'atm/signup'

end
