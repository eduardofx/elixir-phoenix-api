defmodule App.SignInAdminTest do
  use App.DataCase, async: true

  import App.Factory

  alias App.{Admin, SignInAdmin}

  describe "run/2" do
    setup do
      insert(:admin)
      :ok
    end

    test "returns ok when email and password match" do
      assert {:ok, %Admin{}} = SignInAdmin.run("email@example.com", "123456")
    end

    test "returns error when there is no admin with this email" do
      assert {:error, :email_or_password_invalid} = SignInAdmin.run("foo@example.com", "123456")
    end

    test "returns error when the password is invalid" do
      assert {:error, :email_or_password_invalid} =
               SignInAdmin.run("email@example.com", "12345678")
    end
  end
end
