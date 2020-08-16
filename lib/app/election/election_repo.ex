defmodule App.ElectionRepo do
  @moduledoc """
  Election Repository
  """

  alias App.{Election, Repo}

  def get_election!(id), do: Repo.get!(Election, id)
end
