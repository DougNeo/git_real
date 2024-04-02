defmodule Client do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  # preciso passar no header um user-agent
  plug Tesla.Middleware.Headers, [{"authorization", "TOKEN HERE"}, {"user-agent", "Elixir"}]
  plug Tesla.Middleware.JSON

  def user_repos(id) do
    get("/repos/realseguroviagem/srvkit/pulls/#{id}/reviews")
  end
end
