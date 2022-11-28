class Api::V1::AuthenticationController < Api::V1::BaseController
  skip_before_action :authenticate_request

  def login
    skip_authorization
    @user = User.find_by_email(params[:email])
    if @user&.valid_password?(params[:password])
      token = jwt_encode(user_id: @user.id)
      render json: {token: token}, status: :ok
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end
end
