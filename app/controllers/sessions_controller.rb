class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    #raise auth.to_yaml
    #bindings.pry
    flash[:notice] = "Signed in!"
    redirect_to "http://localhost:3000"
  end

	def destroy
	  session[:user_id] = nil
	  flash[:notice] = "Signed out!"
	  redirect_to "http://localhost:3000"
	end
end
