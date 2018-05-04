defmodule Pokedex.Repo.Migrations.CreatePokemon do
  use Ecto.Migration

  def change do
    create table(:pokemon) do
      add :name, :string
      add :type1, :string
      add :type2, :string
      add :ability1, :string
      add :ability2, :string
      add :hidden_ability, :string

      # has_many :abilities
      # has_many :types

      timestamps()
    end

  end
end
