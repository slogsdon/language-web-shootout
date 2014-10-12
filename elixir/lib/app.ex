defmodule App do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(__MODULE__, [], function: :run)
    ]

    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def run do
    Plug.Adapters.Cowboy.http App.Router, [], [port: 3000]
    unless (Code.ensure_loaded?(IEx) && IEx.started?) do
      :timer.sleep(:infinity)
    end
  end
end
