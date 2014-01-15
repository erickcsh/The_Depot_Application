class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_date
  def set_date
    time = Time.now
    @date_loaded = time.strftime("%Y-%m-%d %H:%M:%S")
  end
end
