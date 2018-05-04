defmodule Pokedex.PokemonTest do
  use Pokedex.ModelCase

  alias Pokedex.Pokemon

  @valid_attrs %{ability1: "some content", ability2: "some content", hidden_ability: "some content", name: "some content", type1: "some content", type2: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Pokemon.changeset(%Pokemon{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Pokemon.changeset(%Pokemon{}, @invalid_attrs)
    refute changeset.valid?
  end
end
