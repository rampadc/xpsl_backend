defmodule XpslBackendWeb.PlaylistController do
  use XpslBackendWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end
end
