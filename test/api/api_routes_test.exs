defmodule Api.ApiRoutesTest do
  use ExUnit.Case
  use Plug.Test

  @base "/api"
  @options Router.init([])

  test "Getting data" do
    conn =
      :get |> conn("#{@base}/", %{}) |> Router.call(@options)

    assert conn.state   == :sent
    assert conn.status  == 200
  end

  test "Adding some data" do
    conn =
      :post |> conn("#{@base}/", %{}) |> Router.call(@options)

    assert conn.state   == :sent
    assert conn.status  == 200
  end

  test "Updating some data" do
    conn =
      :put |> conn("#{@base}/1", %{}) |> Router.call(@options)

    assert conn.state   == :sent
    assert conn.status  == 200
  end

  test "Deleting some data" do
    conn =
      :delete |> conn("#{@base}/1", %{}) |> Router.call(@options)

    assert conn.state   == :sent
    assert conn.status  == 200
  end
end