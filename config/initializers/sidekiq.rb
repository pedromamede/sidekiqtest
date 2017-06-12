ActiveJob::Base.queue_adapter = :sidekiq
 
Sidekiq.configure_server do |config|
  config.redis = { url: "redis://#{ENV['SIDEKIQTEST_REDIS_HOST']}:6379/0"}
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{ENV['SIDEKIQTEST_REDIS_HOST']}:6379/0"}
end