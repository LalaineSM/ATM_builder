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
    params[:amount]
    
  end
end
