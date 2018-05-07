defmodule Pokedex.Repo.Migrations.CreatePokemon do
  use Ecto.Migration
  alias Pokedex.Pokemon
  alias Pokedex.Type
  alias Pokedex.Ability

  def change do
    create table(:pokemon) do
      add :name, :string
      add :type1, :string
      add :type2, :string
      add :ability1, :string
      add :ability2, :string
      add :hidden_ability, :string

      has_many :abilities, Pokedex.Ability
      has_many :types, Pokedex.Type

      timestamps()
    end
end
end
