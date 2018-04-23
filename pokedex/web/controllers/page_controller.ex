defmodule Pokedex.PageController do
  use Pokedex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
