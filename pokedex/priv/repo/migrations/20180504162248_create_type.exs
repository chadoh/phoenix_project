defmodule Pokedex.Repo.Migrations.CreateType do
  use Ecto.Migration

  def change do
    create table(:types) do
      add :name, :string, null: false
      add :type, :string

      # belongs_to :pokemon

      timestamps()
    end

  end
end
