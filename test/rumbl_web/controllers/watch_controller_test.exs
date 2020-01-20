defmodule RumblWeb.WatchControllerTest do
  use RumblWeb.ConnCase, async: true
  
  test "requires user authentication on show", %{conn: conn} do
    get(conn, Routes.watch_path(conn, :show, "123"))
    assert html_response(conn, 302)
    assert conn.halted
  end
end
