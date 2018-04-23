# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pokedex,
  ecto_repos: [Pokedex.Repo]

# Configures the endpoint
config :pokedex, Pokedex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "07gw6fDJE9IDofu1s3M8RKZKBDlrplaH/aqyNA/LdNv+dTy2CE5bogSnbTG6ULZS",
  render_errors: [view: Pokedex.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pokedex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
