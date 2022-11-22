class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def new
    @subscription = Subscription.new
  end

  def create
    raise
  end

  def edit
    raise
  end

  def update
    raise
  end

  def destroy
    raise
  end
end
