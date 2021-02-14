# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :hw05, Hw05Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hH+VgfUUT8ts85ATrpjNt0Hn4wl34+esl4jz52SLFpBbUkfrIuOwknXkMG5x+OPD",
  render_errors: [view: Hw05Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hw05.PubSub,
  live_view: [signing_salt: "IclTZoEJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
