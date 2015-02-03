class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    
    def index
      @users = User.all
    end
    
    def show
      add_breadcrumb :profile
    end
    
    def account
      add_breadcrumb :account
    end
    
    private
      def set_user
        @user = User.find params[:id]
      end
  
      def user_params
        params.permit!
        params[:user]
      end
end
