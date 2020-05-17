require "slack-notify"
require 'clockwork'
require 'dotenv/load'
require 'active_support/time'

module Clockwork
  handler do |job|
    sample = SlackNotify::Client.new(webhook_url: ENV['SLACK_KEY'])
    sample.notify("Every 3 minutes Hello!")
  end
  every(3.minutes, 'less.frequent.job')
end
