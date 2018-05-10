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
      add :type_id, :integer
      add :ability_id, :integer

      # has_many :abilities, Pokedex.Ability
      # has_many :types, Pokedex.Type

      timestamps()
    end
end
end
