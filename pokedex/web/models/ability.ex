defmodule Pokedex.Ability do
  use Pokedex.Web, :model

  schema "abilities" do
    field :name, :string, null: false
    field :ability, :string

    # belongs_to :pokemon

    timestamps()
  end

  # to_map = %{ :name => "jeff"}

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    # IO.inspect(params)
    |> cast(params, [:name])
    # |> IO.inspect
    |> validate_required([:name])
    # |> IO.inspect
    |> unique_constraint([:name])
    # |> IO.inspect
  end
end
