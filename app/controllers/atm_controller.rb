class AtmController < ApplicationController
  before_action :authenticate_baccount!

  # baccount_signed_in?

  # current_baccount

  # baccount_session

  def index
  end

  def login
  end

  def transac
  end

  def show_bal
  end

  def withdraw
    # amount = current_baccount.check_input(params[:amount].to_i)  

    amount = params[:amount] 
    amount = 4900 
    # value is 4900 
    ba = current_baccount

    n_1000 = 0
    n_500 = 0
    n_200 = 0 
    n_100 = 0 
    [1000,500,200,100].each do |num| 
      count = amount / num  
      case num
      when 1000
        n_1000 = count 
      when 500 
        n_500 = count 
      when 200 
        n_200 = count 
      when 100 
        n_100 = count 
      end
      amount = amount - (count * num) 
    end

    if amount > 0 
      redirect_to atm_transac_path(error_input: "Invalid Input: Smallest value should be ₱100"), notice: "Invalid Input: Smallest value should be ₱100"  
    else
      ba.update(total_amount: (ba.total_amount - params[:amount].to_i) ) 
      redirect_to transac_complete_path(n_1000: n_1000, n_500: n_500, n_200: n_200, n_100: n_100), notice: ""  
    end

  end
end
