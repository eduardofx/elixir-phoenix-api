defmodule Admin.CreateAdmin do
  @moduledoc """
  Create Admin
  """
  import Ecto.Changeset

  alias App.Admin
  
  def run(params) do
    %Admin{}
    |> cast(params, [:name, :email, :password])
    |> validate_require([:name, :email, :password])
    |> put_password()
    |> IO.inspect()
  end

  defp put_password(%Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset) do
    put_change(changeset, :password_hash, Bcrypt.hash_pwd_salt(password))
  end

  defp put_password(changeset), do: changeset
end
