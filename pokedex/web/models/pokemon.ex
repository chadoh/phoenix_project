defmodule Pokedex.Pokemon do
  use Pokedex.Web, :model
  alias Pokedex.Ability
  alias Pokedex.Type

  schema "pokemon" do
    field :name, :string
    field :type1, :string
    field :type2, :string
    field :ability1, :string
    field :ability2, :string
    field :hidden_ability, :string

    has_many :abilities, Pokedex.Ability
    has_many :types, Pokedex.Type

    timestamps()
  end
end
