class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      bio: params[:bio],
      DOB: params[:DOB],
      phone_number: params[:phone_number],
      admin: params[:admin],

    )
    render :show
  end

  def update
    @user = User.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      password: params[:password] || @user.password,
      bio: params[:bio] || @user.bio,
      DOB: params[:DOB] || @user.dob,
      phone_number: params[:phone_number] || @user.phone_number,
      admin: params[:admin] || @user.admin, #only admin
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "user lost" } #google this!!!
  end
end
