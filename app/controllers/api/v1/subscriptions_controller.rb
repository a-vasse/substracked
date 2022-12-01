class Api::V1::SubscriptionsController < Api::V1::BaseController
  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.start_date = @subscription.calcuate_start_date
    @subscription.user = User.first
    authorize @subscription
    if @subscription.save
      render :index, status: :created
    else
      render_error
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(
      :status,
      :region,
      :renewal_date,
      :start_date,
      :notification_frequency,
      :user_id,
      :plan_id,
      :notes,
    )
  end

  def render_error
    render json: { errors: @subscription.errors.full_messages },
      status: :unprocessable_entity
  end
end
