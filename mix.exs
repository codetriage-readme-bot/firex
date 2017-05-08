defmodule Firex.Mixfile do
  use Mix.Project

  def project do
    [app: :firex,
    version: "0.1.0",
    elixir: "~> 1.3",
    build_embedded: Mix.env == :prod,
    start_permanent: Mix.env == :prod,
    escript: [main_module: Firex],
    deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
  ]
end

# Dependencies can be Hex packages:
#
#   {:mydep, "~> 0.3.0"}
#
# Or git/path repositories:
#
#   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
#
# Type "mix help deps" for more examples and options
defp deps do
  [
    {:blacksmith, "~> 0.1"},
    {:credo, only: ~w(test dev)a},
    {:mix_test_watch, "~> 0.2.5", only: ~w(dev test)a},
  ]
end
end