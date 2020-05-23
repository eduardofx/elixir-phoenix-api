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
  end

  defp put_password(charset) do
    case %Ecto.Changeset{valid?: true} do
      true -> 
        put_change(charset, :password_hash, Bcrypt.hash_pwd_salt(get_change(change_set, :password)))
      
      false ->
        change_set       
    end
  end
end