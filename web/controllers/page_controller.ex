defmodule Turnip.PageController do
  use Turnip.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
