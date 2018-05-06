defmodule Pokedex.Pokemon do
  use Pokedex.Web, :model

  schema "pokemon" do
    field :name, :string
    # field :type1, :string
    # field :type2, :string
    # field :ability1, :string
    # field :ability2, :string
    # field :hidden_ability, :string

    # has_many :abilities
    # has_many :types

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :type1, :type2, :ability1, :ability2, :hidden_ability])
    |> validate_required([:name, :type1, :type2, :ability1, :ability2, :hidden_ability])
  end
end
