class Api::V1::NotificationsController < Api::V1::BaseController
  def create
    @notification = Notification.new(notification_params)
    @notification.user = User.first
    authorize @notification
    @notification.save
  end

  private

  def notification_params
    params.require(:notification).permit(
      :content,
      :user_id
    )
  end
end
