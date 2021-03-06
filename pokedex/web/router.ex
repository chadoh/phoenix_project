defmodule Pokedex.Router do
  use Pokedex.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Pokedex.Auth, repo: Pokedex.Repo
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Pokedex do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
    resources "/users", UserController, only: [:index, :show, :new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Pokedex do
  #   pipe_through :api
  # end
end
