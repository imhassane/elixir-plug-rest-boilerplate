defmodule Routes.Base do
  defmacro __using__([]) do
    quote do
      use Plug.Router

      plug :match
      plug(Plug.Parsers, parsers: [:json], json_decoder: Jason)
      plug :dispatch

      defp send(conn, code, data) when is_integer(code) do
        conn
          |> Plug.Conn.put_resp_content_type("application/json")
          |> send_resp(code, Jason.encode!(data))
      end

      defp send(conn, code, data) when is_atom(code) do
        code =
          case code do
            :ok                 -> 200
            :not_found          -> 404
            :malformed_data     -> 400
            :non_authenticated  -> 401
            :forbidden_access   -> 403
            :server_error       -> 500
            :error              -> 504
          end
        send(conn, code, data)
      end
    end
  end
end