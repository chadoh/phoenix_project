defmodule Pokedex.Type do
  use Pokedex.Web, :model
  alias Pokedex.Pokemon

  schema "types" do
    field :name, :string, null: false
    field :type, :string

    has_many :pokemon, Pokedex.Pokemon

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
