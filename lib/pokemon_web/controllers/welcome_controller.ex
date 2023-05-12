defmodule PokemonWeb.WelcomeController do
  use PokemonWeb, :controller

  def index(conn, _params) do
    text(conn, "welcome to the api Pokemon!")
  end
end
