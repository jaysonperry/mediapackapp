class WelcomeController < ApplicationController

  
  def index
    render( :template => 'welcome/home' )
  end
  
  def after_sign_up_path_for(welcome)
    new_fact-sheet
  end

  def home
    
    if user_signed_in?
      redirect_to( :controller => 'dashboard', :action => 'index' )
    end
    
  end

  def plans
  end

  def terms
  end

  def guides
  end
  
  def pricing
    redirect_to( :controller => 'welcome', :action => 'plans' )
  end
  
end
