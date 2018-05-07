defmodule Pokedex.Repo.Migrations.CreateAbility do
  use Ecto.Migration

  def change do
    create table(:abilities) do
      add :name, :string, null: false

      # belongs_to :pokemon

      timestamps()
    end

  end
end
