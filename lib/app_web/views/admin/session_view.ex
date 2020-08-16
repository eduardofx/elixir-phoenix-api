defmodule AppWeb.Admin.SessionView do
  use AppWeb, :view

  def render("session.json", %{admin: admin, token: token}) do
    %{
      status: "ok",
      data: %{
        name: admin.name,
        token: token
      }
    }
  end
end
