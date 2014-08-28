defmodule Mix.Tasks.Server do
  use Mix.Task

  @recursive true

  @moduledoc """
  Runs server and all registered children in their servers.

  ## Command line options

  * `-h`, `--host` - bind to the given ip
  * `-p`, `--port` - the port to listen to

  """
  def run(args) do
    opts = OptionParser.parse(args, aliases: [h: :host, p: :port]) |> elem(0)
    Mix.Task.run "app.start", args

    if Keyword.has_key? opts, :port do
      opts = Keyword.update!(opts, :port, &binary_to_integer(&1))
    end

    Plug.Adapters.Cowboy.http App.Router, [], opts

    unless (Code.ensure_loaded?(IEx) && IEx.started?) do
      :timer.sleep(:infinity)
    end
  end

  defp binary_to_integer(port) do
    case Integer.parse port do
      :error -> 3000
      {i, _} -> i
    end
  end
end