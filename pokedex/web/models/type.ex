defmodule Pokedex.Type do
  use Pokedex.Web, :model

  schema "types" do
    field :name, :string

    # belongs_to :pokemon

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
