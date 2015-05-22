class UsersController < ApplicationController

  def index
    @user = current_user
  end

  def new
    @user = User.new
    @users = User.where("provider = ?", "api").all
  end

  def create
    @user = User.new(permitted_params[:user])
    @users = User.where("provider = ?", "api").all

    respond_to do |format|
      if @user.save
        format.html { redirect_to(new_user_path, :notice => "The site API has been generated") }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def permitted_params
    params.permit(user: [:provider, :uid, :name])
  end
end
