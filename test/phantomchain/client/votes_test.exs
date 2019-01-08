defmodule PhantomChain.Client.API.VotesTest do
  use ExUnit.Case
  import PhantomChain.Client.API.Votes
  import Tesla.Mock

  @client PhantomChain.Client.new(%{
            host: "http://127.0.0.1:4003/api",
            nethash: "578e820911f24e039733b45e4882b73e301f813a0d2c31330dafda84534ffa23",
            version: "1.1.1"
          })

  setup do
    mock fn
      %{method: :get, url: "http://127.0.0.1:4003/api/votes/dummyId"} ->
        json(%{"success" => true, "data" => %{ id: "dummyId" }})
      %{method: :get, url: "http://127.0.0.1:4003/api/votes"} ->
        json(%{"success" => true, "data" => [%{ id: "dummyId" }]})
    end
    :ok
  end

  test "call PhantomChain.Client.API.Votes.list" do
    assert {:ok, response} = list(@client)
    assert Enum.at(response["data"], 0)["id"] == "dummyId"
    assert response["success"] == true
  end

  test "call PhantomChain.Client.API.Votes.show" do
    assert {:ok, response} = show(@client, "dummyId")
    assert response["data"]["id"] == "dummyId"
    assert response["success"] == true
  end

end
