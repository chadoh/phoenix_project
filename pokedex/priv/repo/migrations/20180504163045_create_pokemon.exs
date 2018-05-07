defmodule Pokedex.Repo.Migrations.CreatePokemon do
  use Ecto.Migration
  alias Pokedex.Pokemon

  def change do
    create table(:pokemon) do
      add :name, :string
      add :type1, :string
      add :type2, :string
      add :ability1, :string
      add :ability2, :string
      add :hidden_ability, :string

      timestamps()
    end
end
end
