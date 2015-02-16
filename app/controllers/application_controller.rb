class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
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
  
  def send_contact
    sender = {name: params[:name], email: params[:email], message: params[:message]}
    ContactMailer.contact_mail(sender).deliver
    redirect_to :back, :notice => "Mail Sent. We will read your mail as soon as possible!"
  end
end
