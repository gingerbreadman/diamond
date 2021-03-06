class UsersController < ApplicationController
  before_action :user_must_be_current_user, :except => [:index, :new, :create]

  def user_must_be_current_user
    @user = User.find_by(id: params[:id])
    unless @user == current_user
      redirect_to root_url, :notice => "Not authorized."
    end
  end


  def index
    #@users = current_user.users
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.zip_code = params[:zip_code]
    @user.email = params[:email]
    @user.phone_number = params[:phone_number]

    if @user.save
      redirect_to users_url, notice: "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.zip_code = params[:zip_code]
    @user.email = params[:email]
    @user.phone_number = params[:phone_number]

    if @user.save
      redirect_to users_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url, notice: "User deleted."
  end
end
