defmodule Pokedex.SessionController do
  use Pokedex.Web, :controller

  def new(conn, _) do
    render conn, "new.html"
  end

  def create(conn, %{"session" => %{"username" => user, "password" =>
  pass}}) do
    case Pokedex.Auth.login_by_username_and_pass(conn, user, pass, repo:
    Repo) do
      {:ok, conn} ->
      conn
      |> put_flash(:info, "Way more than 150 to see here!")
      |> redirect(to: pokemon_path(conn, :index))
      {:error, _reason, conn} -> 
      conn
      |> put_flash(:error, "Ayyyyyyooooo, not gonna fly here homie!")
      |> render("new.html")
    end
  end

  def delete(conn, _) do
    conn
    |> Pokedex.Auth.logout()
    |> redirect(to: page_path(conn, :index))
  end
end
