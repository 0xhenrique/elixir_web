defmodule ElixirWebWeb.SqrtController do
  use ElixirWebWeb, :controller

  def calculate(conn, %{"number" => number}) do
    case Float.parse(number) do
      {num, ""} when num >= 0 ->
        result = :math.sqrt(num)
        json(conn, %{number: num, square_root: result})

      _ ->
        json(conn, %{error: "Invalid or negative number"})
    end
  end
end
