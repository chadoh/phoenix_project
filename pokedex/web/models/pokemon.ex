defmodule Pokedex.Pokemon do
  use Pokedex.Web, :model

  schema "pokemon" do
    field :name, :string
    field :type1, :string
    field :type2, :string
    field :ability1, :string
    field :ability2, :string
    field :hidden_ability, :string

    # has_many :abilities
    # has_many :types

    timestamps()
  end
end
