defmodule Pokedex.Repo.Migrations.CreatePokemon do
  use Ecto.Migration

  def change do
    create table(:pokemon) do
      add :name, :string
      # add :type1, :string
      # add :type2, :string
      # add :ability1, :string
      # add :ability2, :string
      # add :hidden_ability, :string

      # has_many :abilities
      # has_many :types

      timestamps()
    end
    #
    # create_table(:pokemon_full)  do
    #   add :name, :string
    #   add :type1, :string
    #   add :type2, :string
    #   add :ability1, :string
    #   add :ability2, :string
    #   add :hidden_ability, :string
    #
    #   timestamps()
    # end
    # add_foreign_key :pokemon_full, :types, column: :type_id, primary_key: "id"
    # add_foreign_key :pokemon_full, :types, column: :ability_id, primary_key: "id"

  end
end
