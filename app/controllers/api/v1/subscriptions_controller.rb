class Api::V1::SubscriptionsController < Api::V1::BaseController
  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user_id = 9
    authorize @subscription
    p @subscription
    @subscription.save
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
end
