defmodule ReturnHelpers.MixProject do
  use Mix.Project

  def project do
    [
      app: :return_helpers,
      version: "0.0.1",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp description do
    """
    simple library that adds a piping possibility for easy returning from pipe chains
    Imagine:
      ```
      socket =
        socket
        |> assign(valid: true)
      {:noreply, socket}
      ```

    to write as:
      ```
      socket
      |> assign(valid: true)
      |> noreply()
      ```

    Looks cleaner ?
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Daniel Kukula"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/dkuku/return_helpers"}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.21", only: :dev}
    ]
  end
end
