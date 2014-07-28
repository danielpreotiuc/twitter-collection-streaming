require 'rubygems' 
require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = ''
  config.consumer_secret    = ''
  config.oauth_token        = ''
  config.oauth_token_secret = ''
  config.auth_method        = :oauth
end

start = Time.now

TweetStream::Client.new.sample do |status|
  puts JSON.generate(status.attrs)

  # stop after 1 hour
  current = Time.now
  if current - start >= 60 * 60 then
     break
  end
end
