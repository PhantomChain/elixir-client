defmodule PhantomChain.Client.API.Node do
  @moduledoc """
  Documentation for PhantomChain.Client.API.Node
  """

  import PhantomChain.Client

  @spec status(Tesla.Client.t()) :: PhantomChain.Client.response()
  def status(client) do
    client |> get("node/status")
  end

  @spec syncing(Tesla.Client.t()) :: PhantomChain.Client.response()
  def syncing(client) do
    client |> get("node/syncing")
  end

  @spec configuration(Tesla.Client.t()) :: PhantomChain.Client.response()
  def configuration(client) do
    client |> get("node/configuration")
  end
end
