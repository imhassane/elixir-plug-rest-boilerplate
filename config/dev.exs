use Mix.Config

# Development configurations goes here
config :app, port: 8000

# Example of database configuration
# config :app, db_config: %{name: "dev_db", password: "", port: 10000}

config :plug_cowboy,
  log_exceptions_with_status_code: [400..599]
