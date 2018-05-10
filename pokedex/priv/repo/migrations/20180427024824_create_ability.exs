defmodule Pokedex.Repo.Migrations.CreateAbility do
  use Ecto.Migration

  def change do
    create table(:abilities) do
      add :name, :string, null: false
      add :ability, :string
      add :pokemon_id, :integer

      # has_many :pokemon, Pokedex.Pokemon

      timestamps()
    end

  end
end
