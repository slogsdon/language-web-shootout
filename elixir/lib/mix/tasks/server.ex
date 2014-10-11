defmodule Mix.Tasks.Server do
  use Mix.Task

  @recursive true

  @moduledoc """
  Runs server and all registered children in their servers.
  """
  def run(args) do
    Mix.Task.run "app.start", args

    Plug.Adapters.Cowboy.http App.Router, [], [port: 3000]

    unless (Code.ensure_loaded?(IEx) && IEx.started?) do
      :timer.sleep(:infinity)
    end
  end
end