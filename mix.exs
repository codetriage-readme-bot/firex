defmodule Firex.Mixfile do
  use Mix.Project

  def project do
    [app: :firex,
    version: "0.3.0",
    elixir: "~> 1.3",
    build_embedded: Mix.env == :prod,
    start_permanent: Mix.env == :prod,
    escript: [main_module: Firex.Proto.Cli],
    description: "Firex is a library for automatically generating command line interfaces (CLIs) from an elixir module",
    package: package(),
    deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Alex Myasoedov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/msoedov/firex"},
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
    {:credo, only: ~w(test dev)a},
    {:bunt, "~> 0.1.0"},
    {:dogma, only: ~w(test dev)a},
    {:ex_doc, ">= 0.0.0", only: :dev},
    {:mix_test_watch, "~> 0.2.5", only: ~w(dev test)a},
  ]
end
end
