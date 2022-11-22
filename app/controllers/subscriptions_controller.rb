class SubscriptionsController < ApplicationController
  def index
    @subscriptions = policy_scope(Subscription.all)
    @subscription = Subscription.new
    @resources = Resource.where(user: nil)
    @plans = Plan.all
    @active_subscriptions = @subscriptions.where(status: true)
    @inactive_subscriptions = @subscriptions.where(status: false)
    @upcoming_subscriptions =
      @subscriptions.where(
        "renewal_date >= ? AND renewal_date <= ?",
        Date.today,
        1.week.from_now,
      )
  end

  def show
    @subscription = Subscription.find(params[:id])
    authorize @subscription
  end

  def new
    @subscription = Subscription.new
    authorize @subscription
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user = current_user
    authorize @subscription
    if @subscription.save
      redirect_to subscriptions_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def update
    @subscription = subscription.find(params[:id])
    if @subscription.update(subscription_params)
      redirect_to subscriptions_path(@subscription)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    redirect_to user_path(current_user)
  end

  private

  def subscription_params
    params.require(:subscription).permit(:region, :renewal_date, :start_date, :notification_frequency, :user_id, :plan_id, :notes)
  end
end
