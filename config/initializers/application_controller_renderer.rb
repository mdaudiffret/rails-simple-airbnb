# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
Unsplash.configure do |config|
  config.application_access_key = "x1rVw30U_UgsIPqmfxQgL_9ai0TiWIR_gP8QbtyaPNI"
  config.application_secret = "zKZqMWl4HjDBH7WdTSvp0G4vCUlimvzRKDUrP_KL5PI"
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "alices_terrific_client_app"
end
