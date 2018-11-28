defmodule Callback.MixProject do
    use Mix.Project

    def project do
        [
            app: :callback,
            description: "A library to support a number of constructs for forming function callbacks",
            version: "0.1.0",
            elixir: "~> 1.6",
            start_permanent: Mix.env() == :prod,
            deps: deps(),
            dialyzer: [plt_add_deps: :transitive],
            package: package()
        ]
    end

    def application do
        [extra_applications: [:logger]]
    end

    defp deps do
        [
            { :ex_doc, "~> 0.18", only: :dev, runtime: false }
        ]
    end

    defp package do
        [
            maintainers: ["Stefan Johnson"],
            licenses: ["BSD 2-Clause"],
            links: %{ "GitHub" => "https://github.com/ScrimpyCat/Callback" }
        ]
    end
end
