class Api::V1::AuthenticationController < ApiController
  skip_before_action :authenticate_user!, only: [:create]
  def create
    # user = User.find_by(email: params[:login])
    user = User.where("username = :query OR email = :query", query: params[:login]).first
    puts user
    if user&.valid_password?(params[:password])
      render json: { token: JsonWebToken.encode(sub: user.id), user: user }
    else
      render json: { errors: 'invalid gvc' }
    end
  end
  def fetch
    render json: current_user
  end
end