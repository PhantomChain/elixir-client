defmodule PhantomChain.Client.API.Peers do
  @moduledoc """
  Documentation for PhantomChain.Client.API.Peers
  """

  import PhantomChain.Client

  @spec list(Tesla.Client.t(), Keyword.t()) :: PhantomChain.Client.response()
  def list(client, parameters \\ []) do
    client |> get("peers", parameters)
  end

  @spec show(Tesla.Client.t(), String.t()) :: PhantomChain.Client.response()
  def show(client, ip) do
    client |> get("peers/#{ip}")
  end
end
