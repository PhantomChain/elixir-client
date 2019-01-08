defmodule PhantomChain.Client.MixProject do
  use Mix.Project

  def project do
    [
      app: :phantomchain_client,
      version: "1.0.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "PhantomChain Elixir Client",
      source_url: "https://github.com/PhantomChain/elixir-client",
      test_coverage: [tool: ExCoveralls],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :hackney]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:excoveralls, "~> 0.9.1", only: :test},
      {:hackney, "~> 1.10"},
      {:jason, "~> 1.0"},
      {:mock, "~> 0.3.0", only: :test},
      {:temp, "~> 0.4"},
      {:tesla, "~> 1.1"}
    ]
  end

  defp description() do
    "A simple Elixir API client for the PHANTOM Blockchain."
  end

  defp package() do
    [
      maintainers: ["Brian Faust", "PhantomChain"],
      files: ["config", "lib", "mix.exs", "README*", "LICENSE*"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/PhantomChain/elixir-client"}
    ]
  end
end
