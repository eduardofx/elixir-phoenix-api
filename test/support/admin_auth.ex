defmodule AppWeb.AdminAuth do
  @moduledoc """
  Authenticate requests as admin
  """

  import App.Factory
  import Plug.Conn

  alias AppWeb.Guardian

  def authenticate(conn, admin \\ insert(:admin)) do
    {:ok, token, _} = Guardian.encode_and_sign(admin)

    put_req_header(conn, "authorization", "Bearer " <> token)
  end
end
