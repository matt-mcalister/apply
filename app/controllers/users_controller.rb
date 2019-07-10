class UsersController < ApplicationController

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }, status: :accepted
    else
      render json: { errors: ['Invalid email or password'] }, status: :unauthorized
    end
  end

def new
  @user = User.new(user_params)
  if @user.valid?
    @user.save
    token = encode_token({ user_id: @user.id })
    render json: { user: @user, token: token }, status: :accepted
  else
    errors = @user.errors.full_messages
    render json: { errors_array: errors }, status: :unauthorized
  end
end

private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end

end
