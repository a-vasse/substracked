class LineMessageJob < ApplicationJob
  queue_as :default

  def perform(subscription)
    p @client ||= Line::Bot::Client.new { |config|
      # config.channel_id = ENV["LINE_CHANNEL_ID"]
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }


    message = {
      type: 'text',
      text: "Hello #{User.first.name}!, your subscription to #resource , #plan plan is about to renew!"
    }
    p subscription.user.name
    p @client.push_message(subscription.user.line_id, message)
  end

  # run this line in Rails console to test it
  # LineMessageJob.perform_now(Subscription.first)
end
