class WelcomeController < ApplicationController
  def index
  	
  end

  def about

  end

  def newsletter
  	@email = Email.new(email_params)
  	@email.save
  	redirect_to(:back)
  end

  private 
  	def email_params
      params.require(:email).permit(:email)
    end
end