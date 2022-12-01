class SubscriptionsController < ApplicationController
  # after_action :monthly_costs, only: :index

  def index
    @subscriptions = policy_scope(Subscription.all)
    @subscription = Subscription.new
    @resources =
      Resource
        .where(user: nil)
        .or(current_user.created_resources)
        .order(name: :asc)
    @pre_resources = Resource.where(user: nil).order(name: :asc)
    @plans = Plan.all
    @active_subscriptions = @subscriptions.where(status: true)
    @active_filtered_subscriptions =
      @active_subscriptions.where("renewal_date > ?", 1.week.from_now)
    @inactive_subscriptions = @subscriptions.where(status: false)
    @upcoming_subscriptions = @subscriptions.upcoming
    @monthly_sum =
      @active_subscriptions.sum do |sub|
        sub.plan.price / sub.plan.billing_cycle
      end
    @notifications = Notification.where(user: current_user)
  end

  def show
    @subscription = Subscription.find(params[:id])
    authorize @subscription
  end

  def new
    @subscription = Subscription.new
    @plan = Plan.new
    authorize @subscription
    authorize @plan
  end

  def create
    # custom create
    if params["plan"]
      @plan = Plan.new(custom_plan_params)
      @plan.resource = Resource.find_by(user: current_user)
      @subscription = Subscription.new(custom_sub_params)
      @subscription.plan = @plan
    else
      # prefill create
      @subscription = Subscription.new(subscription_params)
    end
    @subscription.user = current_user
    authorize @subscription
    if @subscription.save
      redirect_to subscriptions_path
    else
      @subscriptions = policy_scope(Subscription.all)
      @resources = Resource.where(user: nil).or(current_user.created_resources)
      @pre_resources = Resource.where(user: nil)
      @plans = Plan.all
      @active_subscriptions = @subscriptions.where(status: true)
      @inactive_subscriptions = @subscriptions.where(status: false)
      @upcoming_subscriptions =
        @subscriptions.where(
          "renewal_date >= ? AND renewal_date <= ?",
          Date.today,
          1.week.from_now,
        )
      render :index, status: :unprocessable_entity
    end
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def update
    @subscription = Subscription.find(params[:id])
    authorize @subscription
    if @subscription.update(subscription_params)
      redirect_to subscriptions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    authorize @subscription
    @subscription.destroy
    redirect_to subscriptions_path
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

  def custom_sub_params
    params["subscription"].permit(
      :region,
      :renewal_date,
      :start_date,
      :notification_frequency,
      :user_id,
      :notes,
    )
  end

  def custom_plan_params
    params["plan"].permit(:name, :price, :billing_cycle, :cancellation_notice)
  end
end
