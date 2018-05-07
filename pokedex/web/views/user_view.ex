defmodule Pokedex.UserView do
  use Pokedex.Web, :view
  alias Pokedex.User
  alias Pokedex.Pokemon

  def first_name(%User{name: name}) do
    name
    # |> IO.inspect
    |> String.split(" ")
    |> Enum.at(0)
  end

  # def pokemon(%Pokemon{name: name}) do
  #   name
  #   |> String.split(" ")
  #   |> Enum.at(0)
  # end
end
# end
