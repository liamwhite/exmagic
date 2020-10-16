defmodule ExMagic.Mixfile do
  use Mix.Project

  def project do
    [
      app: :exmagic,
      description: "Wrapper around libmagic",
      version: "0.0.4",
      package: package(),
      name: "ExMagic",
      source_url: "https://github.com/liamwhite/exmagic",
      elixir: "~> 1.9",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      compilers: [:elixir_make] ++ Mix.compilers(),
      aliases: aliases(),
      deps: deps()
    ]
  end

  defp aliases do
    []
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    []
  end

  defp package do
    [
      name: :exmagic,
      files: ["c_src", "lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Andrew Dunham", "Liam P. White"],
      links: %{"GitHub" => "https://github.com/liamwhite/exmagic"},
      licenses: ["MIT"]
    ]
  end

  defp deps do
    [
      {:elixir_make, "~> 0.6.1", runtime: false},
      {:dialyxir, "~> 1.0", only: :test, runtime: false},
      {:ex_doc, "~> 0.23.0", only: :dev}
    ]
  end
end
