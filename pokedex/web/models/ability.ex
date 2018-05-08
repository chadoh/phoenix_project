defmodule Pokedex.Ability do
  use Pokedex.Web, :model
  # alias Pokedex.Pokemon

  schema "abilities" do
    field :name, :string, null: false
    field :ability, :string

    # has_many :pokemon, Pokedex.Pokemon

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
    |> unique_constraint([:name])
  end
end
