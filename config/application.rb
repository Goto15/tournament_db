require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EcgApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Add middleware listening for metrics.
    config.middleware.use(
      Metrics::Integration::Rack::Middleware, agent: Metrics::Agent.new, show: '/stats'
    )

    # Run the Elo calculations and updates
    # config.after_initialize do
    #   EloRating.k_factor = 36

    #   # Reset all player's ratings to avoid double calculations
    #   Player.all.each do |player|
    #     player.elo = 1600
    #     player.save
    #   end

    #   # Calculate all players Elo ratings
    #   Match.all.each do |match|
    #     loser = match.loser.player
    #     winner = match.winner.player

    #     elo_match = EloRating::Match.new
    #     elo_match.add_player(rating: loser.elo)
    #     elo_match.add_player(rating: winner.elo, winner: true)

    #     match.elo_delta = loser.elo - elo_match.updated_ratings[0]

    #     loser.elo = elo_match.updated_ratings[0]
    #     winner.elo = elo_match.updated_ratings[1]

    #     match.save
    #     loser.save
    #     winner.save
    #   end
    #   puts 'Finished calculating Elo'
    # end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
