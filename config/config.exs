# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :transect_app,
  ecto_repos: [TransectApp.Repo]

# Configures the endpoint
config :transect_app, TransectAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0NQBZd/Fq6utU+g/9blvtMXvqyIf+8PiOQc2jlE1CFjaxsWwIDdvnfrKd9to1qv+",
  render_errors: [view: TransectAppWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TransectApp.PubSub,
  live_view: [signing_salt: "b0wZoSUD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
