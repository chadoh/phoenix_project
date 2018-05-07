defmodule Pokedex.PokemonControllerTest do
  use Pokedex.ConnCase

  alias Pokedex.Pokemon
  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, pokemon_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing pokemon"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, pokemon_path(conn, :new)
    assert html_response(conn, 200) =~ "New pokemon"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, pokemon_path(conn, :create), pokemon: @valid_attrs
    assert redirected_to(conn) == pokemon_path(conn, :index)
    assert Repo.get_by(Pokemon, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, pokemon_path(conn, :create), pokemon: @invalid_attrs
    assert html_response(conn, 200) =~ "New pokemon"
  end

  test "shows chosen resource", %{conn: conn} do
    pokemon = Repo.insert! %Pokemon{}
    conn = get conn, pokemon_path(conn, :show, pokemon)
    assert html_response(conn, 200) =~ "Show pokemon"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, pokemon_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    pokemon = Repo.insert! %Pokemon{}
    conn = get conn, pokemon_path(conn, :edit, pokemon)
    assert html_response(conn, 200) =~ "Edit pokemon"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    pokemon = Repo.insert! %Pokemon{}
    conn = put conn, pokemon_path(conn, :update, pokemon), pokemon: @valid_attrs
    assert redirected_to(conn) == pokemon_path(conn, :show, pokemon)
    assert Repo.get_by(Pokemon, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    pokemon = Repo.insert! %Pokemon{}
    conn = put conn, pokemon_path(conn, :update, pokemon), pokemon: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit pokemon"
  end

  test "deletes chosen resource", %{conn: conn} do
    pokemon = Repo.insert! %Pokemon{}
    conn = delete conn, pokemon_path(conn, :delete, pokemon)
    assert redirected_to(conn) == pokemon_path(conn, :index)
    refute Repo.get(Pokemon, pokemon.id)
  end
end
