defmodule Pokedex.AbilityTest do
  use Pokedex.ModelCase

  alias Pokedex.Ability

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Ability.changeset(%Ability{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Ability.changeset(%Ability{}, @invalid_attrs)
    refute changeset.valid?
  end
end
