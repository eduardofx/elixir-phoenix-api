# Elixir Phoenix API

Afater install Elixir, you need to install another package:
```mix archive.install hex phx_new```

Run to Create Project:
```mix phx.new app --no-webpack --no-html```


create database: app_dev
 
![Panel](https://i.ibb.co/MNxvYyY/image.png)

--------------------------------------------------------
To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`
  * Create Module `mix phx.gen.schema Admin administrators name email password`
  * Create tables `mix ecto.create`
  * Migrate tables `mix ecto.migrate`
  * Console app `iex -S mix` (Need install nmake. On windows set to path variable "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\amd64")
