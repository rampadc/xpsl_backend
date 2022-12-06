import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :xpsl_backend, XpslBackendWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "UayMKH8ljW6WEVMySX82Mefx1m7LdEOYet1X0VeR2S24c766P6uzndwPgrtcPzc7",
  server: false

# In test we don't send emails.
config :xpsl_backend, XpslBackend.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
