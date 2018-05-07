defmodule Pokedex.Repo.Migrations.CreatePokemonFull do
  use Ecto.Migration

  def change do
    create table(:pokemon_types) do
    #   add :name, :string
    #   # add :type1, :string
    #   # add :type2, :string
    #   add :ability1, :string
    #   add :ability2, :string
    #   add :hidden_ability, :string
    #
    #   has_many :abilities
    #   # has_many :types
    #
    #   timestamps()
  end
    end
    #
    # add_foreign_key :pokemon, :abilities, column: :type_id, primary_key: "id"
    # add_foreign_key :pokemon, :abilities, column: :ability_id, primary_key: "id"
end
