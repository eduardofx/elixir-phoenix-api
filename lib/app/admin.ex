defmodule App.Admin do
  @moduledoc """
  Admin Schema
  """
  use Ecto.Schema
  # 

  schema "administrators" do
    field :email, :string
    field :name, :string
    field :password, :string, virtual: true 
    field :password_hash, :string

    timestamps()
  end

  # @doc false
  # def changeset(admin, attrs) do
  #   admin
  #   |> cast(attrs, [:name, :email, :password])
  #   |> validate_required([:name, :email, :password])
  # end
end