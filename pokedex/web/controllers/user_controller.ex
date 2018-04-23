defmodule Pokedex.UserController do
  use Pokedex.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Pokedex.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Pokedex.User, id)
    render conn, "show.html", user: user
  end

end
