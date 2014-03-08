class WelcomeController < ApplicationController
  
  def index
    render( :template => 'welcome/home' )
  end
  
 

  def home
    if user_signed_in?
      redirect_to( :controller => 'dashboard', :action => 'index' )
      
      @fact_sheets = FactSheet.all
    end
    
  end

  def plans
    render(:template => 'welcome/plans')
  end

  def terms
  end

  def demos
    render(:template => 'welcome/demos')
  end

  def guides
  end
  
  def pricing
    redirect_to( :controller => 'welcome', :action => 'plans' )
  end
  
end
