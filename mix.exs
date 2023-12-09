defmodule RpiScreenDimmer.MixProject do
  use Mix.Project

  @version "0.1.1"

  def project do
    [
      app: :rpi_screen_dimmer,
      version: @version,
      elixir: "~> 1.15",
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
      {:input_event, "~> 1.4"}
    ]
  end
end