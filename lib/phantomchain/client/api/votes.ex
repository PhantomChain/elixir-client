defmodule PhantomChain.Client.API.Votes do
  @moduledoc """
  Documentation for PhantomChain.Client.API.Votes
  """

  import PhantomChain.Client

  @spec list(Tesla.Client.t(), Keyword.t()) :: PhantomChain.Client.response()
  def list(client, parameters \\ []) do
    client |> get("votes", parameters)
  end

  @spec show(Tesla.Client.t(), String.t()) :: PhantomChain.Client.response()
  def show(client, id) do
    client |> get("votes/#{id}")
  end
end
