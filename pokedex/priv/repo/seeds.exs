# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pokedex.Repo.insert!(%Pokedex.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Pokedex.Ability
alias Pokedex.Repo
alias Pokedex.Type

# Seeds abilities table

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "name" => name, "ability1" => ability}  ->
  # IO.inspect(x)
  # IO.inspect(%Ability{})
  Repo.get_by(Ability, name: ability) ||
  Repo.insert!(%Ability{name: name, ability: ability})
end)

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "name" => name, "ability2" => ability}  ->
  # IO.inspect(x)
  # IO.inspect(%Ability{})
  Repo.get_by(Ability, name: ability) ||
  Repo.insert!(%Ability{name: name, ability: ability})
end)
#
File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "name" => name, "hidden_ability" => ability}  ->
  # IO.inspect(x)
  # IO.inspect(%Ability{})
  Repo.get_by(Ability, name: ability) ||
  Repo.insert!(%Ability{name: name, ability: ability})
end)
#
# # Seeds types table
#
File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "name" => name, "type1" => type} = x  ->
  # IO.inspect(x)
  # IO.inspect(%Ability{})
  Repo.get_by(Type, name: type) ||
  Repo.insert!(%Type{name: name, type: type})
end)
#
File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "name" => name, "type2" => type} = x  ->
  # IO.inspect(x)
  # IO.inspect(%Ability{})
  Repo.get_by(Type, name: type) ||
  Repo.insert!(%Type{name: name, type: type})
end)
