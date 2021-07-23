Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.require_master_key = true
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.compile = true
  config.assets.digest = true
  config.assets.enabled = true
  config.assets.js_compressor = :uglifier

  config.action_controller.asset_host = proc do |source|
    n = Digest::MD5.hexdigest(source).to_i(16) % 3
    ENV['ASSET_HOST'] % n
  end

  # Specifies the header that your server uses for sending files.
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :amazon

  config.force_ssl = true
  config.log_level = :debug
  config.log_tags = [:request_id]

  config.action_mailer.default_url_options = {
    host: ENV['ACTION_MAILER_HOST']
  }


  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_caching = false

  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Log formatter
  config.lograge.enabled = true

  config.active_record.dump_schema_after_migration = false
end
