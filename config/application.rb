require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PersonalPage
  class Application < Rails::Application

    # Disabel Generate assets and helpes
    config.generators.assets = false
    config.generators.helper = false

    # don't generate RSpec tests for views and helpers
    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.view_specs false
      g.helper_specs false
    end

    # glyph
    # flatly_theme
    ENV['RAILS_ADMIN_THEME'] = 'flatly_theme'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Brasilia'

   # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
   # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
   config.i18n.default_locale = :'pt-BR'

   # Do not swallow errors in after_commit/after_rollback callbacks.
   config.active_record.raise_in_transactional_callbacks = true

   config.to_prepare do
    Devise::SessionsController.layout false
    Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : false }
    Devise::ConfirmationsController.layout false
    Devise::UnlocksController.layout false
    Devise::PasswordsController.layout false
   end
  end
end
