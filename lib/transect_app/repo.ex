defmodule TransectApp.Repo do
  use Ecto.Repo,
    otp_app: :transect_app,
    adapter: Ecto.Adapters.Postgres
end
