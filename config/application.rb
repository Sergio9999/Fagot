require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fagot
  class Application < Rails::Application
    Rails.application.secrets.each { |key, value| ENV[key.to_s] ||= value }
    config.active_record.raise_in_transactional_callbacks = true
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'models', '*.{rb,yml}')]
    config.i18n.default_locale = :ru
  end
end
