defmodule App.AdminRepo do
  @moduledoc """
  Admin repository
  """

  alias App.{Admin, Repo}

  def get_admin!(id) do
    Repo.get!(Admin, id)
  end
end
