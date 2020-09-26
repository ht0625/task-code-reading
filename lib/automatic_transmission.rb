require "slack-notify"
require 'dotenv'
Dotenv.load

client = SlackNotify::Client.new(
  webhook_url: ENV["slack_webhook_url"],
  channel: "#programming",
  username: "ロボット"
)
client.notify('この投稿は自動送信されております。')
