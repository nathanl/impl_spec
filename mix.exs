defmodule Foo.MixProject do
  use Mix.Project

  def project do
    [
      dialyzer: dialyzer(),
      app: :foo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0.0", only: [:dev, :test], runtime: false},
    ]
  end

  defp dialyzer do
    [
      plt_add_apps: [:ex_unit, :mix]
    ]
  end
end
