# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :turnip,
  ecto_repos: [Turnip.Repo]

# Configures the endpoint
config :turnip, Turnip.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FiAMYd1Qry+QjF87NFKKnGAv083DzacHmI40KeB46hoCU9RxMiuxJnHOJeNkJchE",
  render_errors: [view: Turnip.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Turnip.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
