defmodule Pokedex.Repo.Migrations.CreatePokemon do
  use Ecto.Migration
  alias Pokedex.Pokemon

  def change do
    create table(:pokemon) do
      add :name, :string

      timestamps()
    end
end
end
