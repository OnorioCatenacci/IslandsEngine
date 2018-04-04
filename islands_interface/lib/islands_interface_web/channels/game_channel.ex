defmodule IslandsInterfaceWeb.GameChannel do
  use IslandsInterfaceWeb, :channel

  alias IslandsEngine.{Game, GameSupervisor}

  def join("game:" <> _player, %{} = _payload, socket) do
    {:ok, socket}
  end

  def handle_in("hello", payload, socket) do
    push(socket, "said_hello", payload)
    {:noreply, socket}
  end
end
