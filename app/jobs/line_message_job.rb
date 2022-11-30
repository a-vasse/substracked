class LineMessageJob < ApplicationJob
  queue_as :default

  def perform(subscription)
      @client ||= Line::Bot::Client.new { |config|
      # config.channel_id = ENV["LINE_CHANNEL_ID"]
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }

    greeting = %w(Ahoy Howdy Gday Yo Hey)

    message = {
      type: 'text',
      text: "#{greeting.sample} Alex! Your subscription to
'Netflix , basic plan ¥790'
is about to renew!
Go to http://www.substracked.com/ to manage your subs now."
    }
    @client.push_message(subscription.user.line_id, message)
    puts "Line Message sent!"
  end
  # run this line in Rails console to test it
  # LineMessageJob.perform_now(Subscription.first)
end
