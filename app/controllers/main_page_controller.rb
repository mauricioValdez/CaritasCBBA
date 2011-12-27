class MainPageController < ApplicationController
   def index
     @campaings = Campaing.find_last_six
    @socialWorks = SocialWork.find_last_six
      render :action=>'index'  # Render a template from the say_hello action method
    end
    
   def info
      render :action=>'quienesSomos'  # Render a template from the say_hello action method
  end
end
