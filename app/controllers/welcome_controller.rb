class WelcomeController < ApplicationController

  
  def index
    render( :template => 'welcome/home' )
  end
  
  def home
  end

  def plans
  end

  def terms
  end

  def guides
  end
  
  def new_guides
    redirect_to( :controller => 'welcome', :action => 'plans' )
  end
  
end