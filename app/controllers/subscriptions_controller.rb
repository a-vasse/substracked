class SubscriptionsController < ApplicationController
  def index
    @subscriptions = policy_scope(Subscription.all)
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user = current_user
    if @subscription.save
      redirect_to subscriptions_path
    else
      render :new, status: :unprocessable_entity
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
    params.require(:subscription).permit(:region, :renewal_date, :start_date, :notification_frequency, :user_id, :resource_id, :notes)
  end
end
