defmodule Pokedex.Repo.Migrations.CreateType do
  use Ecto.Migration

  def change do
    create table(:types) do
      add :name, :string, null: false
      add :type, :string
      add :pokemon_id, :integer

      # has_many :pokemon, Pokedex.Pokemon

      timestamps()
    end

  end
end
