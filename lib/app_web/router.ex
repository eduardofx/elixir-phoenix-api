defmodule AppWeb.Router do
  use AppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :api_as_admin do
    plug :accepts, ["json"]
    plug AppWeb.AuthAccessPipeline
  end

  scope "/api/v1", AppWeb do
    pipe_through :api

    post("/admin/sign_in", Admin.SessionController, :create)
  end

  scope "/api/v1", AppWeb do
    pipe_through :api_as_admin

    resources("/elections", Admin.ElectionController, only: [:index, :create, :update])
    post("/uploads", Admin.UploadController, :create)
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: AppWeb.Telemetry
    end
  end
end
