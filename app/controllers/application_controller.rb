class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  add_breadcrumb :root
  
  def index
  end
  
  def terms
    add_breadcrumb :terms
  end
  
  def impressum
    add_breadcrumb :impressum
  end
  
  def privacy
    add_breadcrumb :privacy
  end
  
  def contact
    add_breadcrumb :contact
  end
end
