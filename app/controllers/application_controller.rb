class ApplicationController < ActionController::Base
  #redirección cuando no existe una sesión activa.
  #before_action :authenticate_user!
  protect_from_forgery with: :exception

end
