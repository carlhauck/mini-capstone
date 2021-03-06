class Api::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if current_user
      render "show.json.jb"
    else
      render json: {}
    end
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.id == @user.id
      @user.destroy
      render json: {message: "User has been deleted."}
    else
      render json: {}
    end
  end

end
