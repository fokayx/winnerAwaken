class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_admin, :admin_signed_in?

  def currtent_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end

  def admin_signed_in?
    !!current_admin
  end

  def authenticate_admin!
    unless admin_signed_in?
      redirect_to '/', notice:'No Entry'
    end
  end
end
