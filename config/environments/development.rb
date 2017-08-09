FarmBot::Application.configure do
  config.action_controller.perform_caching = false
  config.action_mailer.default_url_options = {
    host: Rails.application.routes.default_url_options[:host],
    port: Rails.application.routes.default_url_options[:port]
  }
  config.active_support.deprecation = :log
  config.assets.debug = true
  config.cache_classes = false
  config.consider_all_requests_local = true
  config.eager_load = false
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = { :address => "localhost", :port => 1025 }
  config.webpack.public_path = nil
  config.webpack.config_file = "tools/webpack.config.prd.js"
end
