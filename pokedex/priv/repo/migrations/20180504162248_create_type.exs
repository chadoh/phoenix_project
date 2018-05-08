defmodule Pokedex.Repo.Migrations.CreateType do
  use Ecto.Migration
  alias Pokedex.Pokemon

  def change do
    create table(:types) do
      add :name, :string, null: false
      add :type, :string

      # has_many :pokemon, Pokedex.Pokemon

      timestamps()
    end

  end
end
