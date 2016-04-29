require 'slack-notifier'

desc "Say Happy Friday"
task :friday do
  notifier = Slack::Notifier.new(
    ENV['WEBHOOK_URL'],
    channel: ENV['CHANNEL_NAME'],
    username: 'rebecca'
  )

  notifier.ping 'Happy Friday,  <!everyone>! https://www.youtube.com/watch?v=kfVsfOSbJY0'
end
