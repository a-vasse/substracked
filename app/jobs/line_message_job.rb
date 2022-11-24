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
      text: 'hello world!'
    }
    p subscription.user.line_id
    p @client.push_message(subscription.user.line_id, message)
  end
end
