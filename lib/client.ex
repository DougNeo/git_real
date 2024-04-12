defmodule Client do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  plug Tesla.Middleware.Headers, [{"authorization", "#{System.env(GIT_TOKEN)}"}, {"user-agent", "Elixir"}]
  plug Tesla.Middleware.JSON

    # Endpoint genérico para fazer solicitações GET
    def get(endpoint), do: Tesla.get(endpoint)

    # Endpoint genérico para fazer solicitações POST
    def post(endpoint, body \\ %{}), do: Tesla.post(endpoint, body)

    # Endpoint genérico para fazer solicitações PATCH
    def patch(endpoint, body \\ %{}), do: Tesla.patch(endpoint, body)

    # Endpoint genérico para fazer solicitações DELETE
    def delete(endpoint), do: Tesla.delete(endpoint)
end
