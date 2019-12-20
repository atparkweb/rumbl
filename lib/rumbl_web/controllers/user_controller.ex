defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  
  alias Rumbl.Accounts
  
  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, users: users)
  end
  
  def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, user: user)
  end
end
