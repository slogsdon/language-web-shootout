defmodule App.Router do
  import Plug.Conn
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Hello World!")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end