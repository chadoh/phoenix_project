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
alias Pokedex.Pokemon

# Seeds abilities table

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "ability1" => ability}  ->
  Repo.get_by(Ability, name: ability) ||
  Repo.insert!(%Ability{name: ability})
end)

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "ability2" => ability}  ->
  Repo.get_by(Ability, name: ability) ||
  Repo.insert!(%Ability{name: ability})
end)

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "hidden_ability" => ability}  ->
  Repo.get_by(Ability, name: ability) ||
  Repo.insert!(%Ability{name: ability})
end)

# Seeds types table

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "type1" => type}  ->
  Repo.get_by(Type, name: type) ||
  Repo.insert!(%Type{name: type})
end)

# Seeds pokemon table

File.stream!("/Users/smdahlgren171/Code/Semester Two/phoenix_project/pokedex/priv/repo/dex.csv")
|> CSV.decode(headers: true)
|> Enum.each( fn %{ "name" => name}  ->
  Repo.get_by(Pokemon, name: name) ||
  Repo.insert!(%Pokemon{name: name})
end)
