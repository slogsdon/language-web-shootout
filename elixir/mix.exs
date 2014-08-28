defmodule App.Mixfile do
  use Mix.Project

  def project do
    [app: :app,
     version: "0.0.1",
     elixir: "~> 0.15.2-dev",
     deps: deps]
  end

  def application do
    [applications: [],
     mod: {App, []}]
  end

  defp deps do
    [ {:cowboy, "~> 1.0.0"},
      {:plug, "~> 0.6.0"} ]
  end
end
