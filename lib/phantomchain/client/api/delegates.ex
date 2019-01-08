defmodule PhantomChain.Client.API.Delegates do
  @moduledoc """
  Documentation for PhantomChain.Client.API.Delegates
  """

  import PhantomChain.Client

  @spec list(Tesla.Client.t(), Keyword.t()) :: PhantomChain.Client.response()
  def list(client, parameters \\ []) do
    client |> get("delegates", parameters)
  end

  @spec show(Tesla.Client.t(), String.t()) :: PhantomChain.Client.response()
  def show(client, id) do
    client |> get("delegates/#{id}")
  end

  @spec blocks(Tesla.Client.t(), String.t(), Keyword.t()) :: PhantomChain.Client.response()
  def blocks(client, id, parameters \\ []) do
    client |> get("delegates/#{id}/blocks", parameters)
  end

  @spec voters(Tesla.Client.t(), String.t(), Keyword.t()) :: PhantomChain.Client.response()
  def voters(client, id, parameters \\ []) do
    client |> get("delegates/#{id}/voters", parameters)
  end
end
