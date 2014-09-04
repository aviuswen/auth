class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :get_session_id, :get_user_id

  private
  def current_user
    #@current_user ||= User.find(session[:user_id]) if session[:user_id]
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @current_user
  end
  
  def get_session_id
    @get_session_id = session[:user_id]
  end
  
  def get_user_id
    @get_user_id = :user_id
  end
  
end
