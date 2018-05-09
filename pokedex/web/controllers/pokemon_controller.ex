defmodule Pokedex.PokemonController do
  use Pokedex.Web, :controller

  alias Pokedex.Pokemon

    plug :authenticate when action in [:index]

  def index(conn, _params) do
    pokemon = Repo.all(Pokemon)
    render(conn, "index.html", pokemon: pokemon)
  end

  # def new(conn, _params) do
  #   changeset = Pokemon.changeset(%Pokemon{})
  #   render(conn, "new.html", changeset: changeset)
  # end

  # def create(conn, %{"pokemon" => pokemon_params}) do
  #   changeset = Pokemon.changeset(%Pokemon{}, pokemon_params)
  #
  #   case Repo.insert(changeset) do
  #     {:ok, _pokemon} ->
  #       conn
  #       |> put_flash(:info, "Pokemon created successfully.")
  #       |> redirect(to: pokemon_path(conn, :index))
  #     {:error, changeset} ->
  #       render(conn, "new.html", changeset: changeset)
  #   end
  # end

  def show(conn, %{"id" => id}) do
    pokemon = Repo.get!(Pokemon, id)
    render(conn, "show.html", pokemon: pokemon)
  end

  # def edit(conn, %{"id" => id}) do
  #   pokemon = Repo.get!(Pokemon, id)
  #   changeset = Pokemon.changeset(pokemon)
  #   render(conn, "edit.html", pokemon: pokemon, changeset: changeset)
  # end

  # def update(conn, %{"id" => id, "pokemon" => pokemon_params}) do
  #   pokemon = Repo.get!(Pokemon, id)
  #   changeset = Pokemon.changeset(pokemon, pokemon_params)
  #
  #   case Repo.update(changeset) do
  #     {:ok, pokemon} ->
  #       conn
  #       |> put_flash(:info, "Pokemon updated successfully.")
  #       |> redirect(to: pokemon_path(conn, :show, pokemon))
  #     {:error, changeset} ->
  #       render(conn, "edit.html", pokemon: pokemon, changeset: changeset)
  #   end
  # end

  # def delete(conn, %{"id" => id}) do
  #   pokemon = Repo.get!(Pokemon, id)
  #
  #   # Here we use delete! (with a bang) because we expect
  #   # it to always work (and if it does not, it will raise).
  #   Repo.delete!(pokemon)
  #
  #   conn
  #   |> put_flash(:info, "Pokemon deleted successfully.")
  #   |> redirect(to: pokemon_path(conn, :index))
  # end

  defp authenticate(conn, _opts) do
    if conn.assigns.current_user do
      conn
    else
      conn
      |> put_flash(:error, "Check your privelege")
      |> redirect(to: page_path(conn, :index))
      |> halt()
    end
  end
end
