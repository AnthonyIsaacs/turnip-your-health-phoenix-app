defmodule Turnip.UserView do
  use Turnip.Web, :view
  alias Turnip.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
