Sidekiq.configure_server do |config|
  config.redis = {
    url:  Rails.application.credentials.dig(:redis, :url )
  }
end