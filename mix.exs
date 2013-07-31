defmodule Quadratic.Mixfile do
  use Mix.Project

  def project do
    [ app: :quadratic,
      version: "0.0.1",
      dynamos: [Quadratic.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/quadratic/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { Quadratic, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" },
      { :mongoex, github: "mururu/mongoex" } ]
  end
end
