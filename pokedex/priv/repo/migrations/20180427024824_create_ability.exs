defmodule Pokedex.Repo.Migrations.CreateAbility do
  use Ecto.Migration
  alias Pokedex.Pokemon

  def change do
    create table(:abilities) do
      add :name, :string, null: false
      add :ability, :string

      # has_many :pokemon, Pokedex.Pokemon

      timestamps()
    end

  end
end
