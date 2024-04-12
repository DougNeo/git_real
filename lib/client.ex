defmodule Client do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  plug Tesla.Middleware.Headers, [{"authorization", "#{System.env()}"}, {"user-agent", "Elixir"}]
  plug Tesla.Middleware.JSON

  def user_repos(id) do
    get()
  end
end
