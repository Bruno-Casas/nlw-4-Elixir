defmodule RocketPay.NumbersTest do
  use ExUnit.Case

  alias RocketPay.Numbers

  describe "sim_from_file/1" do
    test "When there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "When there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("number")

      expected_response = {:error, %{message: "invalid file"}}

      assert response == expected_response
    end
  end
end
